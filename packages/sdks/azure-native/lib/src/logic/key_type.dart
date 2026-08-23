/// The key type.
enum KeyType {
  valueNotSpecified("NotSpecified"),
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const KeyType(this.wireValue);
  final String wireValue;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}
