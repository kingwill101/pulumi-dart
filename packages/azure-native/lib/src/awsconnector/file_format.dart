/// Property fileFormat
enum FileFormat {
  parquet("parquet"),
  plainText("plain-text");

  const FileFormat(this.value);
  final String value;

  static FileFormat fromValue(String value) {
    for (final item in FileFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileFormat value: $value');
  }
}

