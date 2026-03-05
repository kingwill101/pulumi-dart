/// Algorithm identifier for encryption, default RSA-OAEP.
enum JsonWebKeyEncryptionAlgorithm {
  valueRSAOAEP("RSA-OAEP"),
  valueRSAOAEP256("RSA-OAEP-256"),
  valueRSA15("RSA1_5");

  const JsonWebKeyEncryptionAlgorithm(this.wireValue);
  final String wireValue;

  static JsonWebKeyEncryptionAlgorithm fromValue(String value) {
    for (final item in JsonWebKeyEncryptionAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyEncryptionAlgorithm value: $value');
  }
}

