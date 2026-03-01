// ignore_for_file: unused_element, unnecessary_cast

class GetCryptoKeysKeyPrimary {
  /// The resource name for this CryptoKeyVersion.
  final String name;

  /// The current state of the CryptoKeyVersion.
  final String state;

  /// Creates a new [GetCryptoKeysKeyPrimary].
  /// [name] The resource name for this CryptoKeyVersion.
  /// [state] The current state of the CryptoKeyVersion.
  GetCryptoKeysKeyPrimary({required this.name, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'state': state};
  }

  factory GetCryptoKeysKeyPrimary.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKeyPrimary(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
