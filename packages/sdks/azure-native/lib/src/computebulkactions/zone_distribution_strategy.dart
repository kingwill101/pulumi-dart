import 'package:pulumi/pulumi.dart' as pulumi;

/// Distribution strategy used for zone allocation policy.
enum ZoneDistributionStrategy implements pulumi.PulumiEnum<String> {
  bestEffortSingleZone("BestEffortSingleZone"),
  prioritized("Prioritized"),
  bestEffortBalanced("BestEffortBalanced"),
  strictBalanced("StrictBalanced");

  const ZoneDistributionStrategy(this.wireValue);
  @override
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
