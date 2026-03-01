/// The availability strategy for the private cloud
enum AvailabilityStrategy {
  singleZone("SingleZone"),
  dualZone("DualZone");

  const AvailabilityStrategy(this.value);
  final String value;

  static AvailabilityStrategy fromValue(String value) {
    for (final item in AvailabilityStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityStrategy value: $value');
  }
}

