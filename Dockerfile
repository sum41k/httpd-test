FROM amazonlinux:latest

RUN yum install -y httpd

COPY ./app /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

