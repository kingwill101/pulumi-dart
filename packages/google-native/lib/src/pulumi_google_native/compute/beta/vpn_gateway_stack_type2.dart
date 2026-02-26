/// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
enum VpnGatewayStackType2 {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const VpnGatewayStackType2(this.value);
  final String value;

  static VpnGatewayStackType2 fromValue(String value) {
    for (final item in VpnGatewayStackType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayStackType2 value: $value');
  }
}
