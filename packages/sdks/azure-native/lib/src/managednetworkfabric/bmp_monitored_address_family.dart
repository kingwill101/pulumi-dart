import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitored Address Family.
enum BmpMonitoredAddressFamily implements pulumi.PulumiEnum<String> {
  ipv4Unicast("ipv4Unicast"),
  ipv6Unicast("ipv6Unicast"),
  vpnIpv4("vpnIpv4"),
  vpnIpv6("vpnIpv6"),
  all("All");

  const BmpMonitoredAddressFamily(this.wireValue);
  @override
  final String wireValue;

  static BmpMonitoredAddressFamily fromValue(String value) {
    for (final item in BmpMonitoredAddressFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BmpMonitoredAddressFamily value: $value');
  }
}
