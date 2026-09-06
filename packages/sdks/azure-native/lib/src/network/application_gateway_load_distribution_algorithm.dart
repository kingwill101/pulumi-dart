import 'package:pulumi/pulumi.dart' as pulumi;

/// Load Distribution Targets resource of an application gateway.
enum ApplicationGatewayLoadDistributionAlgorithm implements pulumi.PulumiEnum<String> {
  valueRoundRobin("RoundRobin"),
  valueLeastConnections("LeastConnections"),
  valueIpHash("IpHash");

  const ApplicationGatewayLoadDistributionAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayLoadDistributionAlgorithm fromValue(String value) {
    for (final item in ApplicationGatewayLoadDistributionAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayLoadDistributionAlgorithm value: $value');
  }
}
