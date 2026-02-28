// ignore_for_file: unused_element, unnecessary_cast

/// Secret provides a reference to entries in Secret Manager.
class Secret {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final String? secretVersion;

  /// Creates a new [Secret].
  /// [secretVersion] The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  Secret({
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final secretVersionValue = secretVersion;
    if (secretVersionValue != null) {
      map['secretVersion'] = secretVersionValue;
    }
    return map;
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      secretVersion:
          map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}
