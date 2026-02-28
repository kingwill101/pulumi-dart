// ignore_for_file: unused_element, unnecessary_cast


/// A securely stored value.
class SecretMetastoreV1beta {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String? cloudSecret;

  /// Creates a new [SecretMetastoreV1beta].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  SecretMetastoreV1beta({
    this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSecret': ?cloudSecret,
    };
  }

  factory SecretMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return SecretMetastoreV1beta(
      cloudSecret: map['cloudSecret'] == null ? null : map['cloudSecret'] as String,
    );
  }
}

