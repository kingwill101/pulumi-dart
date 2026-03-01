/// Target destination.
enum StreamDestinationTarget {
  mqtt("Mqtt"),
  storage("Storage");

  const StreamDestinationTarget(this.value);
  final String value;

  static StreamDestinationTarget fromValue(String value) {
    for (final item in StreamDestinationTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamDestinationTarget value: $value');
  }
}

