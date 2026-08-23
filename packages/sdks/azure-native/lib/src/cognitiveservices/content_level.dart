/// Level at which content is filtered.
enum ContentLevel {
  low("Low"),
  medium("Medium"),
  high("High");

  const ContentLevel(this.wireValue);
  final String wireValue;

  static ContentLevel fromValue(String value) {
    for (final item in ContentLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentLevel value: $value');
  }
}
