/// The availability strategy for the private cloud
enum AvailabilityStrategy {
  singleZone("SingleZone"),
  dualZone("DualZone");

  const AvailabilityStrategy(this.wireValue);
  final String wireValue;

  static AvailabilityStrategy fromValue(String value) {
    for (final item in AvailabilityStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityStrategy value: $value');
  }
}

