/// Property fileFormat
enum FileFormat {
  parquet("parquet"),
  plainText("plain-text");

  const FileFormat(this.wireValue);
  final String wireValue;

  static FileFormat fromValue(String value) {
    for (final item in FileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileFormat value: $value');
  }
}
