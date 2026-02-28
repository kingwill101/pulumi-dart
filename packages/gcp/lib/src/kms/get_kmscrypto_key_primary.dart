// ignore_for_file: unused_element, unnecessary_cast

class GetKMSCryptoKeyPrimary {
  /// The CryptoKey's name.
  /// A CryptoKey’s name belonging to the specified Google Cloud Platform KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final String name;

  /// The current state of the CryptoKeyVersion.
  final String state;

  /// Creates a new [GetKMSCryptoKeyPrimary].
  /// [name] The CryptoKey's name.
  /// [state] The current state of the CryptoKeyVersion.
  GetKMSCryptoKeyPrimary({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetKMSCryptoKeyPrimary.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyPrimary(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
