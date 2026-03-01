/// Level of the logs to be collected.
enum LogCollectionLevel {
  valueError("Error"),
  valueVerbose("Verbose");

  const LogCollectionLevel(this.value);
  final String value;

  static LogCollectionLevel fromValue(String value) {
    for (final item in LogCollectionLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogCollectionLevel value: $value');
  }
}

