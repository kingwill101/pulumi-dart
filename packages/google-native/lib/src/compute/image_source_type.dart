/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceType {
  raw("RAW");

  const ImageSourceType(this.value);
  final String value;

  static ImageSourceType fromValue(String value) {
    for (final item in ImageSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceType value: $value');
  }
}

