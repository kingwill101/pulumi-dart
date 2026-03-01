/// Destination of the view data. Currently only CSV format is supported.
enum FileFormat {
  valueCsv("Csv");

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

