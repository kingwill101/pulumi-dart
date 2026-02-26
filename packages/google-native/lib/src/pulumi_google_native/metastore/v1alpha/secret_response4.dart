// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class SecretResponse4 {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String cloudSecret;

  SecretResponse4({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSecret'] = cloudSecret;
    return map;
  }

  factory SecretResponse4.fromMap(Map<String, dynamic> map) {
    return SecretResponse4(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}
