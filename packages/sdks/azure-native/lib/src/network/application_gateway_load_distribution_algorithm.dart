/// Load Distribution Targets resource of an application gateway.
enum ApplicationGatewayLoadDistributionAlgorithm {
  valueRoundRobin("RoundRobin"),
  valueLeastConnections("LeastConnections"),
  valueIpHash("IpHash");

  const ApplicationGatewayLoadDistributionAlgorithm(this.value);
  final String value;

  static ApplicationGatewayLoadDistributionAlgorithm fromValue(String value) {
    for (final item in ApplicationGatewayLoadDistributionAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayLoadDistributionAlgorithm value: $value');
  }
}

