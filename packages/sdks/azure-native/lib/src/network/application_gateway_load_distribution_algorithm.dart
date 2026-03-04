/// Load Distribution Targets resource of an application gateway.
enum ApplicationGatewayLoadDistributionAlgorithm {
  valueRoundRobin("RoundRobin"),
  valueLeastConnections("LeastConnections"),
  valueIpHash("IpHash");

  const ApplicationGatewayLoadDistributionAlgorithm(this.wireValue);
  final String wireValue;

  static ApplicationGatewayLoadDistributionAlgorithm fromValue(String value) {
    for (final item in ApplicationGatewayLoadDistributionAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ApplicationGatewayLoadDistributionAlgorithm value: $value',
    );
  }
}
