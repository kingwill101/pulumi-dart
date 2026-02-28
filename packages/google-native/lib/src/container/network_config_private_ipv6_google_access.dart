/// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
enum NetworkConfigPrivateIpv6GoogleAccess {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  privateIpv6GoogleAccessDisabled("PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"),
  privateIpv6GoogleAccessToGoogle("PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"),
  privateIpv6GoogleAccessBidirectional(
      "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL");

  const NetworkConfigPrivateIpv6GoogleAccess(this.value);
  final String value;

  static NetworkConfigPrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in NetworkConfigPrivateIpv6GoogleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkConfigPrivateIpv6GoogleAccess value: $value');
  }
}
