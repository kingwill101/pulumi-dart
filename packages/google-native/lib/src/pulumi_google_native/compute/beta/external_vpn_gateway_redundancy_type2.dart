/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyType2 {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyType2(this.value);
  final String value;

  static ExternalVpnGatewayRedundancyType2 fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExternalVpnGatewayRedundancyType2 value: $value');
  }
}
