/// Destination of the view data. Currently only CSV format is supported.
enum FileFormat {
  valueCsv("Csv");

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

