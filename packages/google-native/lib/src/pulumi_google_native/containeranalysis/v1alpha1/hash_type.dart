/// The type of hash that was performed.
enum HashType {
  none("NONE"),
  sha256("SHA256");

  const HashType(this.value);
  final String value;

  static HashType fromValue(String value) {
    for (final item in HashType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HashType value: $value');
  }
}
