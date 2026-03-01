// ignore_for_file: unused_element, unnecessary_cast


class GetKMSCryptoKeyKeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to this CryptoKey. Zero allowed
  /// access reasons means all encrypt, decrypt, and sign operations for
  /// this CryptoKey will fail.
  final List<String> allowedAccessReasons;

  /// Creates a new [GetKMSCryptoKeyKeyAccessJustificationsPolicy].
  /// [allowedAccessReasons] The list of allowed reasons for access to this CryptoKey. Zero allowed
  GetKMSCryptoKeyKeyAccessJustificationsPolicy({
    required this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAccessReasons': allowedAccessReasons,
    };
  }

  factory GetKMSCryptoKeyKeyAccessJustificationsPolicy.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyKeyAccessJustificationsPolicy(
      allowedAccessReasons: (map['allowedAccessReasons'] as List).cast<String>(),
    );
  }
}

