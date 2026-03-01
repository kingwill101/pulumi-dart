/// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
enum VpnGatewayGeneration {
  valueNone("None"),
  valueGeneration1("Generation1"),
  valueGeneration2("Generation2");

  const VpnGatewayGeneration(this.value);
  final String value;

  static VpnGatewayGeneration fromValue(String value) {
    for (final item in VpnGatewayGeneration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayGeneration value: $value');
  }
}

