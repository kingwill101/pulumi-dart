/// The data format of the log files
enum KnownLogFilesDataSourceFormat {
  valueText("text");

  const KnownLogFilesDataSourceFormat(this.value);
  final String value;

  static KnownLogFilesDataSourceFormat fromValue(String value) {
    for (final item in KnownLogFilesDataSourceFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownLogFilesDataSourceFormat value: $value');
  }
}

