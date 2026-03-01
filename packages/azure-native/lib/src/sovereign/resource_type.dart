/// The type of the resource.
enum ResourceType {
  azureFirewalls("azureFirewalls"),
  workspaces("workspaces"),
  automationAccounts("automationAccounts"),
  dashboards("dashboards"),
  userAssignedIdentities("userAssignedIdentities"),
  bastionHosts("bastionHosts"),
  ddosProtectionPlans("ddosProtectionPlans"),
  networkSecurityGroups("networkSecurityGroups"),
  virtualNetworks("virtualNetworks"),
  routeTables("routeTables");

  const ResourceType(this.value);
  final String value;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}

