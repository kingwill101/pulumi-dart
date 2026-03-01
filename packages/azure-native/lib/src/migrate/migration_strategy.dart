/// Migration Strategy.
enum MigrationStrategy {
  unknown("Unknown"),
  optimizeForCost("OptimizeForCost"),
  iaaSOnly("IaaSOnly"),
  optimizeForPaas("OptimizeForPaas"),
  aVSOnly("AVSOnly");

  const MigrationStrategy(this.value);
  final String value;

  static MigrationStrategy fromValue(String value) {
    for (final item in MigrationStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationStrategy value: $value');
  }
}

