/// Level of the logs to be collected.
enum LogCollectionLevel {
  valueError("Error"),
  valueVerbose("Verbose");

  const LogCollectionLevel(this.wireValue);
  final String wireValue;

  static LogCollectionLevel fromValue(String value) {
    for (final item in LogCollectionLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogCollectionLevel value: $value');
  }
}
