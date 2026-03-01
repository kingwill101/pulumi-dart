/// algorithm for private key.
enum PrivateKeyAlgorithm {
  ec256("Ec256"),
  ec384("Ec384"),
  ec521("Ec521"),
  ed25519("Ed25519"),
  rsa2048("Rsa2048"),
  rsa4096("Rsa4096"),
  rsa8192("Rsa8192");

  const PrivateKeyAlgorithm(this.value);
  final String value;

  static PrivateKeyAlgorithm fromValue(String value) {
    for (final item in PrivateKeyAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateKeyAlgorithm value: $value');
  }
}

