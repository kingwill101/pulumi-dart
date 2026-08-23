/// Target destination.
enum EventDestinationTarget {
  mqtt("Mqtt"),
  storage("Storage");

  const EventDestinationTarget(this.wireValue);
  final String wireValue;

  static EventDestinationTarget fromValue(String value) {
    for (final item in EventDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDestinationTarget value: $value');
  }
}
