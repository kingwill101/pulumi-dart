/// Target destination.
enum EventDestinationTarget {
  mqtt("Mqtt"),
  storage("Storage");

  const EventDestinationTarget(this.value);
  final String value;

  static EventDestinationTarget fromValue(String value) {
    for (final item in EventDestinationTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDestinationTarget value: $value');
  }
}

