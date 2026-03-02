// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSourceConfigurationImageRepositoryImageConfiguration {
  /// Port that your application listens to in the container. Defaults to `"8080"`.
  final pulumi.Input<String>? port;
  /// Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  final pulumi.Input<Map<String, String>>? runtimeEnvironmentSecrets;
  /// Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  final pulumi.Input<Map<String, String>>? runtimeEnvironmentVariables;
  /// Command App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start command.
  final pulumi.Input<String>? startCommand;

  /// Creates a new [ServiceSourceConfigurationImageRepositoryImageConfiguration].
  /// [port] Port that your application listens to in the container. Defaults to `"8080"`.
  /// [runtimeEnvironmentSecrets] Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  /// [runtimeEnvironmentVariables] Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  /// [startCommand] Command App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start command.
  ServiceSourceConfigurationImageRepositoryImageConfiguration({
    this.port,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'runtimeEnvironmentSecrets': ?runtimeEnvironmentSecrets,
      'runtimeEnvironmentVariables': ?runtimeEnvironmentVariables,
      'startCommand': ?startCommand,
    };
  }

  factory ServiceSourceConfigurationImageRepositoryImageConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfigurationImageRepositoryImageConfiguration(
      port: map['port'] == null ? null : ((map['port'] as String).input()).input(),
      runtimeEnvironmentSecrets: map['runtimeEnvironmentSecrets'] == null ? null : (((map['runtimeEnvironmentSecrets'] as Map).cast<String, String>()).input()).input(),
      runtimeEnvironmentVariables: map['runtimeEnvironmentVariables'] == null ? null : (((map['runtimeEnvironmentVariables'] as Map).cast<String, String>()).input()).input(),
      startCommand: map['startCommand'] == null ? null : ((map['startCommand'] as String).input()).input(),
    );
  }
}

