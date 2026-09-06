import 'package:pulumi/pulumi.dart' as pulumi;

/// The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
enum IntegrationRuntimeSsisCatalogPricingTier implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  standard("Standard"),
  premium("Premium"),
  premiumRS("PremiumRS");

  const IntegrationRuntimeSsisCatalogPricingTier(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeSsisCatalogPricingTier fromValue(String value) {
    for (final item in IntegrationRuntimeSsisCatalogPricingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeSsisCatalogPricingTier value: $value');
  }
}
