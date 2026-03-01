/// Enum indicating the type of the Analytics item.
enum ItemType {
  valueNone("none"),
  valueQuery("query"),
  valueRecent("recent"),
  valueFunction("function");

  const ItemType(this.value);
  final String value;

  static ItemType fromValue(String value) {
    for (final item in ItemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ItemType value: $value');
  }
}

