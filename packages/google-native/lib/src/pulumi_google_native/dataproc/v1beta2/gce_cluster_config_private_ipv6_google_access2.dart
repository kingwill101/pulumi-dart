/// Optional. The type of IPv6 access for a cluster.
enum GceClusterConfigPrivateIpv6GoogleAccess2 {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK"),
  outbound("OUTBOUND"),
  bidirectional("BIDIRECTIONAL");

  const GceClusterConfigPrivateIpv6GoogleAccess2(this.value);
  final String value;

  static GceClusterConfigPrivateIpv6GoogleAccess2 fromValue(String value) {
    for (final item in GceClusterConfigPrivateIpv6GoogleAccess2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GceClusterConfigPrivateIpv6GoogleAccess2 value: $value');
  }
}
