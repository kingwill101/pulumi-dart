/// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
enum VpnGatewayStackTypeComputeBeta {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const VpnGatewayStackTypeComputeBeta(this.value);
  final String value;

  static VpnGatewayStackTypeComputeBeta fromValue(String value) {
    for (final item in VpnGatewayStackTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayStackTypeComputeBeta value: $value');
  }
}
