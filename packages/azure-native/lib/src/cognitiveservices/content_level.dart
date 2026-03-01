/// Level at which content is filtered.
enum ContentLevel {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const ContentLevel(this.value);
  final String value;

  static ContentLevel fromValue(String value) {
    for (final item in ContentLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentLevel value: $value');
  }
}

