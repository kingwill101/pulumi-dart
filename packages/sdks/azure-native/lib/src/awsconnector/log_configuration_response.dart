// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Definition of LogConfiguration
class LogConfigurationResponse {
  /// The log driver to use for the container. For tasks on FARGATElong, the supported log drivers are ``awslogs``, ``splunk``, and ``awsfirelens``. For tasks hosted on Amazon EC2 instances, the supported log drivers are ``awslogs``, ``fluentd``, ``gelf``, ``json-file``, ``journald``, ``logentries``,``syslog``, ``splunk``, and ``awsfirelens``. For more information about using the ``awslogs`` log driver, see [Using the awslogs log driver](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html) in the *Amazon Elastic Container Service Developer Guide*. For more information about using the ``awsfirelens`` log driver, see [Custom log routing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html) in the *Amazon Elastic Container Service Developer Guide*.  If you have a custom driver that isn't listed, you can fork the Amazon ECS container agent project that's [available on GitHub](https://github.com/aws/amazon-ecs-agent) and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, we don't currently provide support for running modified copies of this software.
  final pulumi.Input<String>? logDriver;

  /// The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
  final pulumi.Input<dynamic>? options;

  /// The secrets to pass to the log configuration. For more information, see [Specifying sensitive data](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<List<SecretResponse>>? secretOptions;

  /// Creates a new [LogConfigurationResponse].
  /// [logDriver] The log driver to use for the container. For tasks on FARGATElong, the supported log drivers are ``awslogs``, ``splunk``, and ``awsfirelens``. For tasks hosted on Amazon EC2 instances, the supported log drivers are ``awslogs``, ``fluentd``, ``gelf``, ``json-file``, ``journald``, ``logentries``,``syslog``, ``splunk``, and ``awsfirelens``. For more information about using the ``awslogs`` log driver, see [Using the awslogs log driver](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html) in the *Amazon Elastic Container Service Developer Guide*. For more information about using the ``awsfirelens`` log driver, see [Custom log routing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html) in the *Amazon Elastic Container Service Developer Guide*.  If you have a custom driver that isn't listed, you can fork the Amazon ECS container agent project that's [available on GitHub](https://github.com/aws/amazon-ecs-agent) and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, we don't currently provide support for running modified copies of this software.
  /// [options] The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
  /// [secretOptions] The secrets to pass to the log configuration. For more information, see [Specifying sensitive data](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html) in the *Amazon Elastic Container Service Developer Guide*.
  LogConfigurationResponse({this.logDriver, this.options, this.secretOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDriver': ?logDriver,
      'options': ?options,
      'secretOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecretResponse>,
            List<Map<String, dynamic>>
          >(
            secretOptions,
            (value) =>
                pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory LogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigurationResponse(
      logDriver: (() {
        final guardedValue = map['logDriver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      secretOptions: (() {
        final guardedValue = map['secretOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SecretResponse>(
            guardedValue,
            (value) =>
                SecretResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
