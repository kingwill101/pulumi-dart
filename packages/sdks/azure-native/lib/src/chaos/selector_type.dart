/// Enum of the selector type.
enum SelectorType {
  valueList("List"),
  valueQuery("Query");

  const SelectorType(this.value);
  final String value;

  static SelectorType fromValue(String value) {
    for (final item in SelectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SelectorType value: $value');
  }
}

