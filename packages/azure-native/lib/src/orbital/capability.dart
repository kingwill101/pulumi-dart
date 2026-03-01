/// Capability of the Ground Station.
enum Capability {
  valueEarthObservation("EarthObservation"),
  valueCommunication("Communication");

  const Capability(this.value);
  final String value;

  static Capability fromValue(String value) {
    for (final item in Capability.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capability value: $value');
  }
}

