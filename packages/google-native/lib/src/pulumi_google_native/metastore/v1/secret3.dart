// ignore_for_file: unused_element, unnecessary_cast

/// A securely stored value.
class Secret3 {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final String? cloudSecret;

  Secret3({
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

  factory Secret3.fromMap(Map<String, dynamic> map) {
    return Secret3(
      cloudSecret:
          map['cloudSecret'] == null ? null : map['cloudSecret'] as String,
    );
  }
}
