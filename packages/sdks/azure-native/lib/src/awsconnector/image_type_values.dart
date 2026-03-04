/// Property value
enum ImageTypeValues {
  kernel("kernel"),
  machine("machine"),
  ramdisk("ramdisk");

  const ImageTypeValues(this.wireValue);
  final String wireValue;

  static ImageTypeValues fromValue(String value) {
    for (final item in ImageTypeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageTypeValues value: $value');
  }
}
