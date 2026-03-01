/// Target destination.
enum DatasetDestinationTarget {
  mqtt("Mqtt"),
  brokerStateStore("BrokerStateStore"),
  storage("Storage");

  const DatasetDestinationTarget(this.value);
  final String value;

  static DatasetDestinationTarget fromValue(String value) {
    for (final item in DatasetDestinationTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetDestinationTarget value: $value');
  }
}

