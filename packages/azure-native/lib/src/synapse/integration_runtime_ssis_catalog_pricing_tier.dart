/// The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
enum IntegrationRuntimeSsisCatalogPricingTier {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valuePremiumRS("PremiumRS");

  const IntegrationRuntimeSsisCatalogPricingTier(this.value);
  final String value;

  static IntegrationRuntimeSsisCatalogPricingTier fromValue(String value) {
    for (final item in IntegrationRuntimeSsisCatalogPricingTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeSsisCatalogPricingTier value: $value');
  }
}

