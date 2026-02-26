// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheKeysetValidationSharedKey {
  /// The name of the secret version in Secret Manager.
  /// The resource name of the secret version must be in the format `projects/*/secrets/*/versions/*` where the `*` values are replaced by the secrets themselves.
  /// The secrets must be at least 16 bytes large.  The recommended secret size depends on the signature algorithm you are using.
  /// * If you are using HMAC-SHA1, we suggest 20-byte secrets.
  /// * If you are using HMAC-SHA256, we suggest 32-byte secrets.
  /// See RFC 2104, Section 3 for more details on these recommendations.
  final String secretVersion;

  EdgeCacheKeysetValidationSharedKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory EdgeCacheKeysetValidationSharedKey.fromMap(Map<String, dynamic> map) {
    return EdgeCacheKeysetValidationSharedKey(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
