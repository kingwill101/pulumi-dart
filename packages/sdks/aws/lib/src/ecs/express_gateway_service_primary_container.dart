// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_primary_container_aws_logs_configuration.dart';
import 'express_gateway_service_primary_container_environment.dart';
import 'express_gateway_service_primary_container_repository_credentials.dart';
import 'express_gateway_service_primary_container_secret.dart';

class ExpressGatewayServicePrimaryContainer {
  final pulumi.Input<
    List<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>
  >?
  awsLogsConfigurations;

  /// Command to run in the container. Overrides the default command from the Docker image.
  final pulumi.Input<List<String>>? commands;

  /// Port on which the container listens for connections.
  final pulumi.Input<int>? containerPort;
  final pulumi.Input<List<ExpressGatewayServicePrimaryContainerEnvironment>>?
  environments;

  /// Docker image to use for the container.
  final pulumi.Input<String> image;
  final pulumi.Input<
    ExpressGatewayServicePrimaryContainerRepositoryCredentials
  >?
  repositoryCredentials;
  final pulumi.Input<List<ExpressGatewayServicePrimaryContainerSecret>>?
  secrets;

  /// Creates a new [ExpressGatewayServicePrimaryContainer].
  /// [awsLogsConfigurations] Optional.
  /// [commands] Command to run in the container. Overrides the default command from the Docker image.
  /// [containerPort] Port on which the container listens for connections.
  /// [environments] Optional.
  /// [image] Docker image to use for the container.
  /// [repositoryCredentials] Optional.
  /// [secrets] Optional.
  ExpressGatewayServicePrimaryContainer({
    this.awsLogsConfigurations,
    this.commands,
    this.containerPort,
    this.environments,
    required this.image,
    this.repositoryCredentials,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLogsConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>,
            List<Map<String, dynamic>>
          >(
            awsLogsConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ExpressGatewayServicePrimaryContainerAwsLogsConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'commands': ?commands,
      'containerPort': ?containerPort,
      'environments':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExpressGatewayServicePrimaryContainerEnvironment>,
            List<Map<String, dynamic>>
          >(
            environments,
            (value) =>
                pulumi.Input.encodeList<
                  ExpressGatewayServicePrimaryContainerEnvironment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'image': image,
      'repositoryCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressGatewayServicePrimaryContainerRepositoryCredentials,
            Map<String, dynamic>
          >(repositoryCredentials, (value) => value.toMap()),
      'secrets':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExpressGatewayServicePrimaryContainerSecret>,
            List<Map<String, dynamic>>
          >(
            secrets,
            (value) =>
                pulumi.Input.encodeList<
                  ExpressGatewayServicePrimaryContainerSecret,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ExpressGatewayServicePrimaryContainer.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpressGatewayServicePrimaryContainer(
      awsLogsConfigurations: (() {
        final guardedValue = map['awsLogsConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ExpressGatewayServicePrimaryContainerAwsLogsConfiguration
          >(
            guardedValue,
            (value) =>
                ExpressGatewayServicePrimaryContainerAwsLogsConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      commands: (() {
        final guardedValue = map['commands'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      containerPort: (() {
        final guardedValue = map['containerPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      environments: (() {
        final guardedValue = map['environments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ExpressGatewayServicePrimaryContainerEnvironment
          >(
            guardedValue,
            (value) => ExpressGatewayServicePrimaryContainerEnvironment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      repositoryCredentials: (() {
        final guardedValue = map['repositoryCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secrets: (() {
        final guardedValue = map['secrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExpressGatewayServicePrimaryContainerSecret>(
            guardedValue,
            (value) => ExpressGatewayServicePrimaryContainerSecret.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
