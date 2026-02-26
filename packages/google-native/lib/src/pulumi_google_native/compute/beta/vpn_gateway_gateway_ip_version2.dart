/// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
enum VpnGatewayGatewayIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6");

  const VpnGatewayGatewayIpVersion2(this.value);
  final String value;

  static VpnGatewayGatewayIpVersion2 fromValue(String value) {
    for (final item in VpnGatewayGatewayIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayGatewayIpVersion2 value: $value');
  }
}
