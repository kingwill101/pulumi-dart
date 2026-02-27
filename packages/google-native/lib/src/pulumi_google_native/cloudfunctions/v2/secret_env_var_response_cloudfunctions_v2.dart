// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.
class SecretEnvVarResponseCloudfunctionsV2 {
  /// Name of the environment variable.
  final String key;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final String project;

  /// Name of the secret in secret manager (not the full resource name).
  final String secret;

  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final String version;

  SecretEnvVarResponseCloudfunctionsV2({
    required this.key,
    required this.project,
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['project'] = project;
    map['secret'] = secret;
    map['version'] = version;
    return map;
  }

  factory SecretEnvVarResponseCloudfunctionsV2.fromMap(
      Map<String, dynamic> map) {
    return SecretEnvVarResponseCloudfunctionsV2(
      key: map['key'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      version: map['version'] as String,
    );
  }
}
