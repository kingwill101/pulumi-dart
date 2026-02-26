/// The type of the key, either stored in `public_key` or referenced in `key_id`.
enum BuildSignatureKeyType2 {
  keyTypeUnspecified("KEY_TYPE_UNSPECIFIED"),
  pgpAsciiArmored("PGP_ASCII_ARMORED"),
  pkixPem("PKIX_PEM");

  const BuildSignatureKeyType2(this.value);
  final String value;

  static BuildSignatureKeyType2 fromValue(String value) {
    for (final item in BuildSignatureKeyType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildSignatureKeyType2 value: $value');
  }
}
