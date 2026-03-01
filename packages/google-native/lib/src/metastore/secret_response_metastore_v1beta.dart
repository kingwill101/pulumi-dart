// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class SecretResponseMetastoreV1beta {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String cloudSecret;

  /// Creates a new [SecretResponseMetastoreV1beta].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  SecretResponseMetastoreV1beta({required this.cloudSecret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudSecret': cloudSecret};
  }

  factory SecretResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return SecretResponseMetastoreV1beta(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}
