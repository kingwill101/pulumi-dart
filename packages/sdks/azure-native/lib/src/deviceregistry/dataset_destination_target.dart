/// Target destination.
enum DatasetDestinationTarget {
  mqtt("Mqtt"),
  brokerStateStore("BrokerStateStore"),
  storage("Storage");

  const DatasetDestinationTarget(this.wireValue);
  final String wireValue;

  static DatasetDestinationTarget fromValue(String value) {
    for (final item in DatasetDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetDestinationTarget value: $value');
  }
}
