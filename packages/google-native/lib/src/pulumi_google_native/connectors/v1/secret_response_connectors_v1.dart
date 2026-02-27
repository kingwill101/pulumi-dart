// ignore_for_file: unused_element, unnecessary_cast

/// Secret provides a reference to entries in Secret Manager.
class SecretResponseConnectorsV1 {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final String secretVersion;

  SecretResponseConnectorsV1({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory SecretResponseConnectorsV1.fromMap(Map<String, dynamic> map) {
    return SecretResponseConnectorsV1(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
