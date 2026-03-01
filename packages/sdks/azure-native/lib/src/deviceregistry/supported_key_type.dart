/// Crypto type: ECC.
enum SupportedKeyType {
  eCC("ECC");

  const SupportedKeyType(this.value);
  final String value;

  static SupportedKeyType fromValue(String value) {
    for (final item in SupportedKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedKeyType value: $value');
  }
}

