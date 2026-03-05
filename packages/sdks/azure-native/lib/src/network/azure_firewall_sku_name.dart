/// Name of an Azure Firewall SKU.
enum AzureFirewallSkuName {
  valueAZFWVNet("AZFW_VNet"),
  valueAZFWHub("AZFW_Hub");

  const AzureFirewallSkuName(this.wireValue);
  final String wireValue;

  static AzureFirewallSkuName fromValue(String value) {
    for (final item in AzureFirewallSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallSkuName value: $value');
  }
}

