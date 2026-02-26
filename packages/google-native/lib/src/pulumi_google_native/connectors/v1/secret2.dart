// ignore_for_file: unused_element, unnecessary_cast

/// Secret provides a reference to entries in Secret Manager.
class Secret2 {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final String? secretVersion;

  Secret2({
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

  factory Secret2.fromMap(Map<String, dynamic> map) {
    return Secret2(
      secretVersion:
          map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}
