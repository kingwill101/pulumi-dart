/// Tier of an Azure Firewall.
enum AzureFirewallSkuTier {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic");

  const AzureFirewallSkuTier(this.wireValue);
  final String wireValue;

  static AzureFirewallSkuTier fromValue(String value) {
    for (final item in AzureFirewallSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallSkuTier value: $value');
  }
}

