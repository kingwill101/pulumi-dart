// ignore_for_file: unused_element, unnecessary_cast

/// Pairs a secret environment variable with a SecretVersion in Secret Manager.
class SecretManagerSecret {
  /// Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.
  final String? env;

  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final String? versionName;

  SecretManagerSecret({
    this.env,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory SecretManagerSecret.fromMap(Map<String, dynamic> map) {
    return SecretManagerSecret(
      env: map['env'] == null ? null : map['env'] as String,
      versionName:
          map['versionName'] == null ? null : map['versionName'] as String,
    );
  }
}
