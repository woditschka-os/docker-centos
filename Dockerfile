FROM centos:7

ENV LANG en_US.utf8
ENV TZ=Europe/Vienna

RUN yum update -y && \
    yum clean all && \
    rm -rf /var/cache/yum&& \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
