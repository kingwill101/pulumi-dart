// ignore_for_file: unused_element, unnecessary_cast


class CryptoKeyPrimary {
  /// The resource name for the CryptoKey.
  final String? name;
  /// (Output)
  /// The current state of the CryptoKeyVersion.
  final String? state;

  /// Creates a new [CryptoKeyPrimary].
  /// [name] The resource name for the CryptoKey.
  /// [state] (Output)
  CryptoKeyPrimary({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory CryptoKeyPrimary.fromMap(Map<String, dynamic> map) {
    return CryptoKeyPrimary(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

