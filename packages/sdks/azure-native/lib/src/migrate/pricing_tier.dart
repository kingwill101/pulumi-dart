import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets pricing tier.
enum PricingTier implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  free("Free");

  const PricingTier(this.wireValue);
  @override
  final String wireValue;

  static PricingTier fromValue(String value) {
    for (final item in PricingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingTier value: $value');
  }
}
