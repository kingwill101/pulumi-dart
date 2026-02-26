/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceType3 {
  raw("RAW");

  const ImageSourceType3(this.value);
  final String value;

  static ImageSourceType3 fromValue(String value) {
    for (final item in ImageSourceType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceType3 value: $value');
  }
}
