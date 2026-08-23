/// The data format of the message. Optionally the data format can be added to each message.
enum DataFormat {
  valueMULTIJSON("MULTIJSON"),
  valueJSON("JSON"),
  valueCSV("CSV");

  const DataFormat(this.wireValue);
  final String wireValue;

  static DataFormat fromValue(String value) {
    for (final item in DataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFormat value: $value');
  }
}
