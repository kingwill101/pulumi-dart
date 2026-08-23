/// Migration Strategy.
enum MigrationStrategy {
  unknown("Unknown"),
  optimizeForCost("OptimizeForCost"),
  iaaSOnly("IaaSOnly"),
  optimizeForPaas("OptimizeForPaas"),
  aVSOnly("AVSOnly");

  const MigrationStrategy(this.wireValue);
  final String wireValue;

  static MigrationStrategy fromValue(String value) {
    for (final item in MigrationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationStrategy value: $value');
  }
}
