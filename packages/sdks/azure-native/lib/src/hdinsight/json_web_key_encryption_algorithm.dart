/// Algorithm identifier for encryption, default RSA-OAEP.
enum JsonWebKeyEncryptionAlgorithm {
  valueRSAOAEP("RSA-OAEP"),
  valueRSAOAEP256("RSA-OAEP-256"),
  valueRSA15("RSA1_5");

  const JsonWebKeyEncryptionAlgorithm(this.value);
  final String value;

  static JsonWebKeyEncryptionAlgorithm fromValue(String value) {
    for (final item in JsonWebKeyEncryptionAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyEncryptionAlgorithm value: $value');
  }
}

