// ignore_for_file: unused_element, unnecessary_cast

class FunctionServiceConfigSecretEnvironmentVariable {
  /// Name of the environment variable.
  final String key;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final String projectId;

  /// Name of the secret in secret manager (not the full resource name).
  final String secret;

  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final String version;

  FunctionServiceConfigSecretEnvironmentVariable({
    required this.key,
    required this.projectId,
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['projectId'] = projectId;
    map['secret'] = secret;
    map['version'] = version;
    return map;
  }

  factory FunctionServiceConfigSecretEnvironmentVariable.fromMap(
      Map<String, dynamic> map) {
    return FunctionServiceConfigSecretEnvironmentVariable(
      key: map['key'] as String,
      projectId: map['projectId'] as String,
      secret: map['secret'] as String,
      version: map['version'] as String,
    );
  }
}
