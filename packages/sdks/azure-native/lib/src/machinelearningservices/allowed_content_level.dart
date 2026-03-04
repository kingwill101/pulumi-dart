/// Level at which content is filtered.
enum AllowedContentLevel {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const AllowedContentLevel(this.wireValue);
  final String wireValue;

  static AllowedContentLevel fromValue(String value) {
    for (final item in AllowedContentLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedContentLevel value: $value');
  }
}
