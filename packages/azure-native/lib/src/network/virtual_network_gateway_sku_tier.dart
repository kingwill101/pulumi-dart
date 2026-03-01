/// Gateway SKU tier.
enum VirtualNetworkGatewaySkuTier {
  valueBasic("Basic"),
  valueHighPerformance("HighPerformance"),
  valueStandard("Standard"),
  valueUltraPerformance("UltraPerformance"),
  valueVpnGw1("VpnGw1"),
  valueVpnGw2("VpnGw2"),
  valueVpnGw3("VpnGw3"),
  valueVpnGw4("VpnGw4"),
  valueVpnGw5("VpnGw5"),
  valueVpnGw1AZ("VpnGw1AZ"),
  valueVpnGw2AZ("VpnGw2AZ"),
  valueVpnGw3AZ("VpnGw3AZ"),
  valueVpnGw4AZ("VpnGw4AZ"),
  valueVpnGw5AZ("VpnGw5AZ"),
  valueErGw1AZ("ErGw1AZ"),
  valueErGw2AZ("ErGw2AZ"),
  valueErGw3AZ("ErGw3AZ"),
  valueErGwScale("ErGwScale");

  const VirtualNetworkGatewaySkuTier(this.value);
  final String value;

  static VirtualNetworkGatewaySkuTier fromValue(String value) {
    for (final item in VirtualNetworkGatewaySkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewaySkuTier value: $value');
  }
}

