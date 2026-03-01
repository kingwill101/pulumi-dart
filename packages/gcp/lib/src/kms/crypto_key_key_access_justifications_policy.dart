// ignore_for_file: unused_element, unnecessary_cast


class CryptoKeyKeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to this CryptoKey. Zero allowed
  /// access reasons means all encrypt, decrypt, and sign operations for
  /// this CryptoKey will fail.
  final List<String>? allowedAccessReasons;

  /// Creates a new [CryptoKeyKeyAccessJustificationsPolicy].
  /// [allowedAccessReasons] The list of allowed reasons for access to this CryptoKey. Zero allowed
  CryptoKeyKeyAccessJustificationsPolicy({
    this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAccessReasons': ?allowedAccessReasons,
    };
  }

  factory CryptoKeyKeyAccessJustificationsPolicy.fromMap(Map<String, dynamic> map) {
    return CryptoKeyKeyAccessJustificationsPolicy(
      allowedAccessReasons: map['allowedAccessReasons'] == null ? null : (map['allowedAccessReasons'] as List).cast<String>(),
    );
  }
}

