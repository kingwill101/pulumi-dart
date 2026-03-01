/// content type
enum ContentType {
  applicationJson("application/json");

  const ContentType(this.value);
  final String value;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}

