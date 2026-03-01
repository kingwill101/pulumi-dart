/// A strategy for creating NAT Gateways for private subnets within a VPC.
enum NatGatewayStrategy {
  valueNone("None"),
  valueSingle("Single"),
  valueOnePerAz("OnePerAz");

  const NatGatewayStrategy(this.value);
  final String value;

  static NatGatewayStrategy fromValue(String value) {
    for (final item in NatGatewayStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewayStrategy value: $value');
  }
}

