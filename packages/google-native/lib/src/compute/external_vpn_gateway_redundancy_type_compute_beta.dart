/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyTypeComputeBeta {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyTypeComputeBeta(this.value);
  final String value;

  static ExternalVpnGatewayRedundancyTypeComputeBeta fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExternalVpnGatewayRedundancyTypeComputeBeta value: $value');
  }
}
