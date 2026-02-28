/// The type of the image used to create this disk. The default and only valid value is RAW.
enum ImageSourceTypeComputeBeta {
  raw("RAW");

  const ImageSourceTypeComputeBeta(this.value);
  final String value;

  static ImageSourceTypeComputeBeta fromValue(String value) {
    for (final item in ImageSourceTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSourceTypeComputeBeta value: $value');
  }
}

