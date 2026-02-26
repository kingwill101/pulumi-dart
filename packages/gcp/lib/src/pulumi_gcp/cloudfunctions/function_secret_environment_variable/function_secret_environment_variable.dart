// ignore_for_file: unused_element, unnecessary_cast

class FunctionSecretEnvironmentVariable {
  /// Name of the environment variable.
  final String key;

  /// Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  final String? projectId;

  /// ID of the secret in secret manager (not the full resource name).
  final String secret;

  /// Version of the secret (version number or the string "latest"). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start.
  final String version;

  FunctionSecretEnvironmentVariable({
    required this.key,
    this.projectId,
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    map['secret'] = secret;
    map['version'] = version;
    return map;
  }

  factory FunctionSecretEnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return FunctionSecretEnvironmentVariable(
      key: map['key'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      secret: map['secret'] as String,
      version: map['version'] as String,
    );
  }
}
