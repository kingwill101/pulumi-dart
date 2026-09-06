import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of an Azure Firewall SKU.
enum AzureFirewallSkuName implements pulumi.PulumiEnum<String> {
  valueAZFWVNet("AZFW_VNet"),
  valueAZFWHub("AZFW_Hub");

  const AzureFirewallSkuName(this.wireValue);
  @override
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
