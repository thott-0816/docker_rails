FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs ntp yarn

RUN mkdir /docker_rails
WORKDIR /docker_rails

COPY . ./

RUN bundle install
VOLUME /user/local/bundle

ADD . /gpc-app
