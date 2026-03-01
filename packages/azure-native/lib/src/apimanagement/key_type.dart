/// The Key to be used to generate token for user.
enum KeyType {
  valuePrimary("primary"),
  valueSecondary("secondary");

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

