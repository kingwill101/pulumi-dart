/// The type of the key, either stored in `public_key` or referenced in `key_id`.
enum BuildSignatureKeyTypeContaineranalysisV1beta1 {
  keyTypeUnspecified("KEY_TYPE_UNSPECIFIED"),
  pgpAsciiArmored("PGP_ASCII_ARMORED"),
  pkixPem("PKIX_PEM");

  const BuildSignatureKeyTypeContaineranalysisV1beta1(this.value);
  final String value;

  static BuildSignatureKeyTypeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in BuildSignatureKeyTypeContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BuildSignatureKeyTypeContaineranalysisV1beta1 value: $value',
    );
  }
}
