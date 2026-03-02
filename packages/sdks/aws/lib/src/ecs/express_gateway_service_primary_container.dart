// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_primary_container_aws_logs_configuration.dart';
import 'express_gateway_service_primary_container_environment.dart';
import 'express_gateway_service_primary_container_repository_credentials.dart';
import 'express_gateway_service_primary_container_secret.dart';

class ExpressGatewayServicePrimaryContainer {
  final pulumi.Input<List<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>>? awsLogsConfigurations;
  /// Command to run in the container. Overrides the default command from the Docker image.
  final pulumi.Input<List<String>>? commands;
  /// Port on which the container listens for connections.
  final pulumi.Input<int>? containerPort;
  final pulumi.Input<List<ExpressGatewayServicePrimaryContainerEnvironment>>? environments;
  /// Docker image to use for the container.
  final pulumi.Input<String> image;
  final pulumi.Input<ExpressGatewayServicePrimaryContainerRepositoryCredentials>? repositoryCredentials;
  final pulumi.Input<List<ExpressGatewayServicePrimaryContainerSecret>>? secrets;

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
      'awsLogsConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>, List<Map<String, dynamic>>>(awsLogsConfigurations, (value) => pulumi.Input.encodeList<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commands': ?commands,
      'containerPort': ?containerPort,
      'environments': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServicePrimaryContainerEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<ExpressGatewayServicePrimaryContainerEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'repositoryCredentials': ?pulumi.Input.mapOptionalInputValue<ExpressGatewayServicePrimaryContainerRepositoryCredentials, Map<String, dynamic>>(repositoryCredentials, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServicePrimaryContainerSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<ExpressGatewayServicePrimaryContainerSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExpressGatewayServicePrimaryContainer.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainer(
      awsLogsConfigurations: map['awsLogsConfigurations'] == null ? null : (pulumi.Input.decodeList<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>(map['awsLogsConfigurations'], (value) => ExpressGatewayServicePrimaryContainerAwsLogsConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      containerPort: map['containerPort'] == null ? null : (map['containerPort'] as int).input(),
      environments: map['environments'] == null ? null : (pulumi.Input.decodeList<ExpressGatewayServicePrimaryContainerEnvironment>(map['environments'], (value) => ExpressGatewayServicePrimaryContainerEnvironment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      repositoryCredentials: map['repositoryCredentials'] == null ? null : (ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap((map['repositoryCredentials'] as Map).cast<String, dynamic>())).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<ExpressGatewayServicePrimaryContainerSecret>(map['secrets'], (value) => ExpressGatewayServicePrimaryContainerSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

