import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Strategy.
enum MigrationStrategy implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  optimizeForCost("OptimizeForCost"),
  iaaSOnly("IaaSOnly"),
  optimizeForPaas("OptimizeForPaas"),
  aVSOnly("AVSOnly");

  const MigrationStrategy(this.wireValue);
  @override
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
