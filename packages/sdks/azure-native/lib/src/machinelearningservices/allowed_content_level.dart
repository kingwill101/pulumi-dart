/// Level at which content is filtered.
enum AllowedContentLevel {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const AllowedContentLevel(this.value);
  final String value;

  static AllowedContentLevel fromValue(String value) {
    for (final item in AllowedContentLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedContentLevel value: $value');
  }
}

