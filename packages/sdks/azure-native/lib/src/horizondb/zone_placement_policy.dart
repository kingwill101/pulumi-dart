/// Defines how replicas are placed across availability zones.
enum ZonePlacementPolicy {
  strict("Strict"),
  bestEffort("BestEffort");

  const ZonePlacementPolicy(this.wireValue);
  final String wireValue;

  static ZonePlacementPolicy fromValue(String value) {
    for (final item in ZonePlacementPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonePlacementPolicy value: $value');
  }
}
