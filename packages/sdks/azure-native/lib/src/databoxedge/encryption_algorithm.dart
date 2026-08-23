/// The algorithm used to encrypt "Value".
enum EncryptionAlgorithm {
  valueNone("None"),
  valueAES256("AES256"),
  valueRSAESPKCS1V15("RSAES_PKCS1_v_1_5");

  const EncryptionAlgorithm(this.wireValue);
  final String wireValue;

  static EncryptionAlgorithm fromValue(String value) {
    for (final item in EncryptionAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionAlgorithm value: $value');
  }
}
