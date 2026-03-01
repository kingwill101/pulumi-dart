/// Name of an Azure Firewall SKU.
enum AzureFirewallSkuName {
  valueAZFWVNet("AZFW_VNet"),
  valueAZFWHub("AZFW_Hub");

  const AzureFirewallSkuName(this.value);
  final String value;

  static AzureFirewallSkuName fromValue(String value) {
    for (final item in AzureFirewallSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallSkuName value: $value');
  }
}

