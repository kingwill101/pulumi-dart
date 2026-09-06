import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how replicas are placed across availability zones.
enum ZonePlacementPolicy implements pulumi.PulumiEnum<String> {
  strict("Strict"),
  bestEffort("BestEffort");

  const ZonePlacementPolicy(this.wireValue);
  @override
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
