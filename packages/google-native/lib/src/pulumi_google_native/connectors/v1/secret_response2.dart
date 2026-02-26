// ignore_for_file: unused_element, unnecessary_cast

/// Secret provides a reference to entries in Secret Manager.
class SecretResponse2 {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final String secretVersion;

  SecretResponse2({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory SecretResponse2.fromMap(Map<String, dynamic> map) {
    return SecretResponse2(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
