/// The data format of the message. Optionally the data format can be added to each message.
enum DataFormat {
  valueMULTIJSON("MULTIJSON"),
  valueJSON("JSON"),
  valueCSV("CSV");

  const DataFormat(this.value);
  final String value;

  static DataFormat fromValue(String value) {
    for (final item in DataFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFormat value: $value');
  }
}

