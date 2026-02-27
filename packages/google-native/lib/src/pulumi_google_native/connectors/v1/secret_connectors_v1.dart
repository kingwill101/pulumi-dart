// ignore_for_file: unused_element, unnecessary_cast

/// Secret provides a reference to entries in Secret Manager.
class SecretConnectorsV1 {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final String? secretVersion;

  SecretConnectorsV1({
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

  factory SecretConnectorsV1.fromMap(Map<String, dynamic> map) {
    return SecretConnectorsV1(
      secretVersion:
          map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}
