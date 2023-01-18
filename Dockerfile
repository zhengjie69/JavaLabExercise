FROM openjdk:18-jdk-alpine3.15
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
RUN echo "Hi"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]