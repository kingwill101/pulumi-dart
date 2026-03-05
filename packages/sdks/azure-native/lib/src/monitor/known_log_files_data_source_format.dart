/// The data format of the log files
enum KnownLogFilesDataSourceFormat {
  valueText("text");

  const KnownLogFilesDataSourceFormat(this.wireValue);
  final String wireValue;

  static KnownLogFilesDataSourceFormat fromValue(String value) {
    for (final item in KnownLogFilesDataSourceFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownLogFilesDataSourceFormat value: $value');
  }
}

