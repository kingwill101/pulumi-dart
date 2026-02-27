// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class SecretMetastoreV1 {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String? cloudSecret;

  SecretMetastoreV1({
    this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSecretValue = cloudSecret;
    if (cloudSecretValue != null) {
      map['cloudSecret'] = cloudSecretValue;
    }
    return map;
  }

  factory SecretMetastoreV1.fromMap(Map<String, dynamic> map) {
    return SecretMetastoreV1(
      cloudSecret:
          map['cloudSecret'] == null ? null : map['cloudSecret'] as String,
    );
  }
}
