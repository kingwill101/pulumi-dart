/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyType3 {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyType3(this.value);
  final String value;

  static ExternalVpnGatewayRedundancyType3 fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExternalVpnGatewayRedundancyType3 value: $value');
  }
}
