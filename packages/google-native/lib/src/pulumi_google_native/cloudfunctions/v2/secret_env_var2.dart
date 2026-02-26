// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.
class SecretEnvVar2 {
  /// Name of the environment variable.
  final String? key;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final String? project;

  /// Name of the secret in secret manager (not the full resource name).
  final String? secret;

  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final String? version;

  SecretEnvVar2({
    this.key,
    this.project,
    this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory SecretEnvVar2.fromMap(Map<String, dynamic> map) {
    return SecretEnvVar2(
      key: map['key'] == null ? null : map['key'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
