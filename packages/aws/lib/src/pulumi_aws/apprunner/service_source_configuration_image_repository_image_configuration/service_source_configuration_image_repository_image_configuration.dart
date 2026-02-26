// ignore_for_file: unused_element, unnecessary_cast

class ServiceSourceConfigurationImageRepositoryImageConfiguration {
  /// Port that your application listens to in the container. Defaults to `"8080"`.
  final String? port;

  /// Secrets and parameters available to your service as environment variables. A map of key/value pairs, where the key is the desired name of the Secret in the environment (i.e. it does not have to match the name of the secret in Secrets Manager or SSM Parameter Store), and the value is the ARN of the secret from AWS Secrets Manager or the ARN of the parameter in AWS SSM Parameter Store.
  final Map<String, String>? runtimeEnvironmentSecrets;

  /// Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of `AWSAPPRUNNER` are reserved for system use and aren't valid.
  final Map<String, String>? runtimeEnvironmentVariables;

  /// Command App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start command.
  final String? startCommand;

  ServiceSourceConfigurationImageRepositoryImageConfiguration({
    this.port,
    this.runtimeEnvironmentSecrets,
    this.runtimeEnvironmentVariables,
    this.startCommand,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
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

  factory ServiceSourceConfigurationImageRepositoryImageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ServiceSourceConfigurationImageRepositoryImageConfiguration(
      port: map['port'] == null ? null : map['port'] as String,
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
