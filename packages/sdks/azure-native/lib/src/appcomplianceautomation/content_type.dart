/// content type
enum ContentType {
  applicationJson("application/json");

  const ContentType(this.wireValue);
  final String wireValue;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}
