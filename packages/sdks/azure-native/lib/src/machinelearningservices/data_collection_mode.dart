/// Enable or disable data collection.
enum DataCollectionMode {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataCollectionMode(this.value);
  final String value;

  static DataCollectionMode fromValue(String value) {
    for (final item in DataCollectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataCollectionMode value: $value');
  }
}

