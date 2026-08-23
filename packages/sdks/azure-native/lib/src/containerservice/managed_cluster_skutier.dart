/// The tier of a managed cluster SKU. If not specified, the default is 'Free'. See [AKS Pricing Tier](https://learn.microsoft.com/azure/aks/free-standard-pricing-tiers) for more details.
enum ManagedClusterSKUTier {
  valuePremium("Premium"),
  valueStandard("Standard"),
  valueFree("Free");

  const ManagedClusterSKUTier(this.wireValue);
  final String wireValue;

  static ManagedClusterSKUTier fromValue(String value) {
    for (final item in ManagedClusterSKUTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterSKUTier value: $value');
  }
}
