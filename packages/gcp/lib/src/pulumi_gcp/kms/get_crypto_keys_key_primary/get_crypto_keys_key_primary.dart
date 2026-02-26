// ignore_for_file: unused_element, unnecessary_cast

class GetCryptoKeysKeyPrimary {
  /// The resource name for this CryptoKeyVersion.
  final String name;

  /// The current state of the CryptoKeyVersion.
  final String state;

  GetCryptoKeysKeyPrimary({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetCryptoKeysKeyPrimary.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKeyPrimary(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
