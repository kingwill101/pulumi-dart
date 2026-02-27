// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../express_gateway_service_primary_container_aws_logs_configuration/express_gateway_service_primary_container_aws_logs_configuration.dart';
import '../express_gateway_service_primary_container_environment/express_gateway_service_primary_container_environment.dart';
import '../express_gateway_service_primary_container_repository_credentials/express_gateway_service_primary_container_repository_credentials.dart';
import '../express_gateway_service_primary_container_secret/express_gateway_service_primary_container_secret.dart';

class ExpressGatewayServicePrimaryContainer {
  final List<ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>?
      awsLogsConfigurations;

  /// Command to run in the container. Overrides the default command from the Docker image.
  final List<String>? commands;

  /// Port on which the container listens for connections.
  final int? containerPort;
  final List<ExpressGatewayServicePrimaryContainerEnvironment>? environments;

  /// Docker image to use for the container.
  final String image;
  final ExpressGatewayServicePrimaryContainerRepositoryCredentials?
      repositoryCredentials;
  final List<ExpressGatewayServicePrimaryContainerSecret>? secrets;

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
    final map = <String, dynamic>{};
    final awsLogsConfigurationsValue = awsLogsConfigurations;
    if (awsLogsConfigurationsValue != null) {
      map['awsLogsConfigurations'] = pulumi.Input.encodeList<
              ExpressGatewayServicePrimaryContainerAwsLogsConfiguration,
              Map<String, dynamic>>(
          awsLogsConfigurationsValue, (value) => value.toMap());
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = pulumi.Input.encodeList<
          ExpressGatewayServicePrimaryContainerEnvironment,
          Map<String, dynamic>>(environmentsValue, (value) => value.toMap());
    }
    map['image'] = image;
    final repositoryCredentialsValue = repositoryCredentials;
    if (repositoryCredentialsValue != null) {
      map['repositoryCredentials'] = repositoryCredentialsValue.toMap();
    }
    final secretsValue = secrets;
    if (secretsValue != null) {
      map['secrets'] = pulumi.Input.encodeList<
          ExpressGatewayServicePrimaryContainerSecret,
          Map<String, dynamic>>(secretsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExpressGatewayServicePrimaryContainer.fromMap(
      Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainer(
      awsLogsConfigurations: map['awsLogsConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  ExpressGatewayServicePrimaryContainerAwsLogsConfiguration>(
              map['awsLogsConfigurations'],
              (value) =>
                  ExpressGatewayServicePrimaryContainerAwsLogsConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      environments: map['environments'] == null
          ? null
          : pulumi.Input.decodeList<
                  ExpressGatewayServicePrimaryContainerEnvironment>(
              map['environments'],
              (value) =>
                  ExpressGatewayServicePrimaryContainerEnvironment.fromMap(
                      (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      repositoryCredentials: map['repositoryCredentials'] == null
          ? null
          : ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap(
              (map['repositoryCredentials'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null
          ? null
          : pulumi.Input.decodeList<
                  ExpressGatewayServicePrimaryContainerSecret>(
              map['secrets'],
              (value) => ExpressGatewayServicePrimaryContainerSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
