/// Crypto type: ECC.
enum SupportedKeyType {
  eCC("ECC");

  const SupportedKeyType(this.wireValue);
  final String wireValue;

  static SupportedKeyType fromValue(String value) {
    for (final item in SupportedKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedKeyType value: $value');
  }
}
