// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class SecretResponseMetastoreV1alpha {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String cloudSecret;

  SecretResponseMetastoreV1alpha({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSecret'] = cloudSecret;
    return map;
  }

  factory SecretResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return SecretResponseMetastoreV1alpha(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}
