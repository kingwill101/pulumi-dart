// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for secrets stored in Google Secret Manager.
class SecretManagerSource {
  /// The name of the Secret Version containing the encryption key in the following format: `projects/{project}/secrets/{secret_id}/versions/{version_number}` Note that only numbered versions are supported. Aliases like "latest" are not supported.
  final String secretVersion;

  SecretManagerSource({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory SecretManagerSource.fromMap(Map<String, dynamic> map) {
    return SecretManagerSource(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
