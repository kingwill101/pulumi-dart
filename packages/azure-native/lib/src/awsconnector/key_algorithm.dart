/// Property value
enum KeyAlgorithm {
  eCPrime256v1("EC_prime256v1"),
  eCSecp384r1("EC_secp384r1"),
  eCSecp521r1("EC_secp521r1"),
  rSA1024("RSA_1024"),
  rSA2048("RSA_2048"),
  rSA3072("RSA_3072"),
  rSA4096("RSA_4096");

  const KeyAlgorithm(this.value);
  final String value;

  static KeyAlgorithm fromValue(String value) {
    for (final item in KeyAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyAlgorithm value: $value');
  }
}

