/// Target destination.
enum StreamDestinationTarget {
  mqtt("Mqtt"),
  storage("Storage");

  const StreamDestinationTarget(this.wireValue);
  final String wireValue;

  static StreamDestinationTarget fromValue(String value) {
    for (final item in StreamDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamDestinationTarget value: $value');
  }
}

