/// Property value
enum ImageTypeValues {
  kernel("kernel"),
  machine("machine"),
  ramdisk("ramdisk");

  const ImageTypeValues(this.value);
  final String value;

  static ImageTypeValues fromValue(String value) {
    for (final item in ImageTypeValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageTypeValues value: $value');
  }
}

