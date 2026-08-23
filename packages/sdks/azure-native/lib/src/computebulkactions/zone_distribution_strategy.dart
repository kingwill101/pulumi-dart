/// Distribution strategy used for zone allocation policy.
enum ZoneDistributionStrategy {
  bestEffortSingleZone("BestEffortSingleZone"),
  prioritized("Prioritized"),
  bestEffortBalanced("BestEffortBalanced"),
  strictBalanced("StrictBalanced");

  const ZoneDistributionStrategy(this.wireValue);
  final String wireValue;

  static ZoneDistributionStrategy fromValue(String value) {
    for (final item in ZoneDistributionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneDistributionStrategy value: $value');
  }
}
