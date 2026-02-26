/// Compression of the loaded JSON file.
enum JsonFileFormatCompression2 {
  jsonCompressionUnspecified("JSON_COMPRESSION_UNSPECIFIED"),
  noCompression("NO_COMPRESSION"),
  gzip("GZIP");

  const JsonFileFormatCompression2(this.value);
  final String value;

  static JsonFileFormatCompression2 fromValue(String value) {
    for (final item in JsonFileFormatCompression2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonFileFormatCompression2 value: $value');
  }
}
