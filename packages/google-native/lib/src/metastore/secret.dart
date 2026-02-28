// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class Secret {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String? cloudSecret;

  /// Creates a new [Secret].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  Secret({
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

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      cloudSecret:
          map['cloudSecret'] == null ? null : map['cloudSecret'] as String,
    );
  }
}
