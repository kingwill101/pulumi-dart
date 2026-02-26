// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyKeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to this CryptoKey. Zero allowed
  /// access reasons means all encrypt, decrypt, and sign operations for
  /// this CryptoKey will fail.
  final List<String>? allowedAccessReasons;

  CryptoKeyKeyAccessJustificationsPolicy({
    this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedAccessReasonsValue = allowedAccessReasons;
    if (allowedAccessReasonsValue != null) {
      map['allowedAccessReasons'] = allowedAccessReasonsValue;
    }
    return map;
  }

  factory CryptoKeyKeyAccessJustificationsPolicy.fromMap(
      Map<String, dynamic> map) {
    return CryptoKeyKeyAccessJustificationsPolicy(
      allowedAccessReasons: map['allowedAccessReasons'] == null
          ? null
          : (map['allowedAccessReasons'] as List).cast<String>(),
    );
  }
}
