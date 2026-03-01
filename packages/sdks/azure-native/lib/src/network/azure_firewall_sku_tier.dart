/// Tier of an Azure Firewall.
enum AzureFirewallSkuTier {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic");

  const AzureFirewallSkuTier(this.value);
  final String value;

  static AzureFirewallSkuTier fromValue(String value) {
    for (final item in AzureFirewallSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallSkuTier value: $value');
  }
}

