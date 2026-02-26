/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceType2 {
  raw("RAW");

  const ImageSourceType2(this.value);
  final String value;

  static ImageSourceType2 fromValue(String value) {
    for (final item in ImageSourceType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceType2 value: $value');
  }
}
