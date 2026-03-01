/// Gets or sets the content source type.
enum ContentSourceType {
  valueEmbeddedContent("embeddedContent"),
  valueUri("uri");

  const ContentSourceType(this.value);
  final String value;

  static ContentSourceType fromValue(String value) {
    for (final item in ContentSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSourceType value: $value');
  }
}

