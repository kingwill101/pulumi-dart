/// Gets or sets the content source type.
enum ContentSourceType {
  embeddedContent("embeddedContent"),
  uri("uri");

  const ContentSourceType(this.wireValue);
  final String wireValue;

  static ContentSourceType fromValue(String value) {
    for (final item in ContentSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSourceType value: $value');
  }
}
