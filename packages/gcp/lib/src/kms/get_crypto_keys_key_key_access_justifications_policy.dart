// ignore_for_file: unused_element, unnecessary_cast

class GetCryptoKeysKeyKeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to this CryptoKey. Zero allowed
  /// access reasons means all encrypt, decrypt, and sign operations for
  /// this CryptoKey will fail.
  final List<String> allowedAccessReasons;

  /// Creates a new [GetCryptoKeysKeyKeyAccessJustificationsPolicy].
  /// [allowedAccessReasons] The list of allowed reasons for access to this CryptoKey. Zero allowed
  GetCryptoKeysKeyKeyAccessJustificationsPolicy({
    required this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedAccessReasons'] = allowedAccessReasons;
    return map;
  }

  factory GetCryptoKeysKeyKeyAccessJustificationsPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetCryptoKeysKeyKeyAccessJustificationsPolicy(
      allowedAccessReasons:
          (map['allowedAccessReasons'] as List).cast<String>(),
    );
  }
}
