// ignore_for_file: unused_element, unnecessary_cast

class ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues {
  /// Command App Runner runs to build your application.
  final String? buildCommand;

  /// Port that your application listens to in the container. Defaults to `"8080"`.
  final String? port;

  /// Runtime environment type for building and running an App Runner service. Represents a programming language runtime. Valid values: `PYTHON_3`, `NODEJS_12`, `NODEJS_14`, `NODEJS_16`, `CORRETTO_8`, `CORRETTO_11`, `GO_1`, `DOTNET_6`, `PHP_81`, `RUBY_31`.
  final String runtime;

  /// Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  final Map<String, String>? runtimeEnvironmentSecrets;

  /// Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  final Map<String, String>? runtimeEnvironmentVariables;

  /// Command App Runner runs to start your application.
  final String? startCommand;

  ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues({
    this.buildCommand,
    this.port,
    required this.runtime,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildCommandValue = buildCommand;
    if (buildCommandValue != null) {
      map['buildCommand'] = buildCommandValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['runtime'] = runtime;
    final runtimeEnvironmentSecretsValue = runtimeEnvironmentSecrets;
    if (runtimeEnvironmentSecretsValue != null) {
      map['runtimeEnvironmentSecrets'] = runtimeEnvironmentSecretsValue;
    }
    final runtimeEnvironmentVariablesValue = runtimeEnvironmentVariables;
    if (runtimeEnvironmentVariablesValue != null) {
      map['runtimeEnvironmentVariables'] = runtimeEnvironmentVariablesValue;
    }
    final startCommandValue = startCommand;
    if (startCommandValue != null) {
      map['startCommand'] = startCommandValue;
    }
    return map;
  }

  factory ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues.fromMap(
      Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues(
      buildCommand:
          map['buildCommand'] == null ? null : map['buildCommand'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      runtime: map['runtime'] as String,
      runtimeEnvironmentSecrets: map['runtimeEnvironmentSecrets'] == null
          ? null
          : (map['runtimeEnvironmentSecrets'] as Map).cast<String, String>(),
      runtimeEnvironmentVariables: map['runtimeEnvironmentVariables'] == null
          ? null
          : (map['runtimeEnvironmentVariables'] as Map).cast<String, String>(),
      startCommand:
          map['startCommand'] == null ? null : map['startCommand'] as String,
    );
  }
}
