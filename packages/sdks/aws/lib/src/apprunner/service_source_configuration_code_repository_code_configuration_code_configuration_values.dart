// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues {
  /// Command App Runner runs to build your application.
  final pulumi.Input<String>? buildCommand;
  /// Port that your application listens to in the container. Defaults to `"8080"`.
  final pulumi.Input<String>? port;
  /// Runtime environment type for building and running an App Runner service. Represents a programming language runtime. Valid values: `PYTHON_3`, `NODEJS_12`, `NODEJS_14`, `NODEJS_16`, `CORRETTO_8`, `CORRETTO_11`, `GO_1`, `DOTNET_6`, `PHP_81`, `RUBY_31`.
  final pulumi.Input<String> runtime;
  /// Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  final pulumi.Input<Map<String, String>>? runtimeEnvironmentSecrets;
  /// Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  final pulumi.Input<Map<String, String>>? runtimeEnvironmentVariables;
  /// Command App Runner runs to start your application.
  final pulumi.Input<String>? startCommand;

  /// Creates a new [ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues].
  /// [buildCommand] Command App Runner runs to build your application.
  /// [port] Port that your application listens to in the container. Defaults to `"8080"`.
  /// [runtime] Runtime environment type for building and running an App Runner service. Represents a programming language runtime. Valid values: `PYTHON_3`, `NODEJS_12`, `NODEJS_14`, `NODEJS_16`, `CORRETTO_8`, `CORRETTO_11`, `GO_1`, `DOTNET_6`, `PHP_81`, `RUBY_31`.
  /// [runtimeEnvironmentSecrets] Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  /// [runtimeEnvironmentVariables] Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  /// [startCommand] Command App Runner runs to start your application.
  const ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues({
    this.buildCommand,
    this.port,
    required this.runtime,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildCommand': ?buildCommand,
      'port': ?port,
      'runtime': runtime,
      'runtimeEnvironmentSecrets': ?runtimeEnvironmentSecrets,
      'runtimeEnvironmentVariables': ?runtimeEnvironmentVariables,
      'startCommand': ?startCommand,
    };
  }

  factory ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues(
      buildCommand: (() { final guardedValue = map['buildCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      runtimeEnvironmentSecrets: (() { final guardedValue = map['runtimeEnvironmentSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      runtimeEnvironmentVariables: (() { final guardedValue = map['runtimeEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      startCommand: (() { final guardedValue = map['startCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

