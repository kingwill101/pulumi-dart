/// The encryption algorithm.
enum EncryptionAlgorithm {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valueDES3("DES3"),
  valueRC2("RC2"),
  valueAES128("AES128"),
  valueAES192("AES192"),
  valueAES256("AES256");

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
