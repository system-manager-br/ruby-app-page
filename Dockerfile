FROM quay.io/system_manager_br/ruby-hello-world:v1.0-ubi8r27
USER default
EXPOSE 8080
ENV RACK_ENV production
ENV RAILS_ENV production
COPY . /opt/app-root/src/
CMD ["scl", "enable", "./run.sh"]

USER root
RUN chmod og+rw /opt/app-root/src/db
USER default
