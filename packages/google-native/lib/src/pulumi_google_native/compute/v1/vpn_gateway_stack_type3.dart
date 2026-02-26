/// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
enum VpnGatewayStackType3 {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const VpnGatewayStackType3(this.value);
  final String value;

  static VpnGatewayStackType3 fromValue(String value) {
    for (final item in VpnGatewayStackType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayStackType3 value: $value');
  }
}
