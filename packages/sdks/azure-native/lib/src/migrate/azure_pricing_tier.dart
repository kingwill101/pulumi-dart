import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets Azure Pricing Tier - Free, Basic, etc.
enum AzurePricingTier implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  basic("Basic");

  const AzurePricingTier(this.wireValue);
  @override
  final String wireValue;

  static AzurePricingTier fromValue(String value) {
    for (final item in AzurePricingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzurePricingTier value: $value');
  }
}
