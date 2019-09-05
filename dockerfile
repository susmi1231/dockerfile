FROM ubuntu
RUN yum install java-1.8.0-openjdk -y

ENV ANT_HOME /usr/local/ant
ENV PATH ${PATH}:/usr/local/ant/bin

# Added ANT tool from host to docker container
ADD apache-ant-1.7.0 /usr/local/ant

RUN git clone https://github.com/susmi1231/demo.git

COPY /demo/* /usr/local/ant

CMD ant


