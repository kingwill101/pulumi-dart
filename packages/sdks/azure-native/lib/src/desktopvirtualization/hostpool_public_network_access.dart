/// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
enum HostpoolPublicNetworkAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueEnabledForSessionHostsOnly("EnabledForSessionHostsOnly"),
  valueEnabledForClientsOnly("EnabledForClientsOnly");

  const HostpoolPublicNetworkAccess(this.value);
  final String value;

  static HostpoolPublicNetworkAccess fromValue(String value) {
    for (final item in HostpoolPublicNetworkAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostpoolPublicNetworkAccess value: $value');
  }
}

