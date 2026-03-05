/// Enum indicating the type of the Analytics item.
enum ItemType {
  valueNone("none"),
  valueQuery("query"),
  valueRecent("recent"),
  valueFunction("function");

  const ItemType(this.wireValue);
  final String wireValue;

  static ItemType fromValue(String value) {
    for (final item in ItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ItemType value: $value');
  }
}

