/// Enable or disable data collection.
enum DataCollectionMode {
  enabled("Enabled"),
  disabled("Disabled");

  const DataCollectionMode(this.wireValue);
  final String wireValue;

  static DataCollectionMode fromValue(String value) {
    for (final item in DataCollectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataCollectionMode value: $value');
  }
}
