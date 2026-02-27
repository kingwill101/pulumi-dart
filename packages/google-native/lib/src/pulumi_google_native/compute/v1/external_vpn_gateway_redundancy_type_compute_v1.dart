/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyTypeComputeV1 {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyTypeComputeV1(this.value);
  final String value;

  static ExternalVpnGatewayRedundancyTypeComputeV1 fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExternalVpnGatewayRedundancyTypeComputeV1 value: $value');
  }
}
