/// Enum of the selector type.
enum SelectorType {
  valueList("List"),
  valueQuery("Query");

  const SelectorType(this.wireValue);
  final String wireValue;

  static SelectorType fromValue(String value) {
    for (final item in SelectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SelectorType value: $value');
  }
}

