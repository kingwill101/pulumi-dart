/// The key type.
enum KeyType {
  valueNotSpecified("NotSpecified"),
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const KeyType(this.value);
  final String value;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}

