import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
enum HostpoolPublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueEnabledForSessionHostsOnly("EnabledForSessionHostsOnly"),
  valueEnabledForClientsOnly("EnabledForClientsOnly");

  const HostpoolPublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static HostpoolPublicNetworkAccess fromValue(String value) {
    for (final item in HostpoolPublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostpoolPublicNetworkAccess value: $value');
  }
}
