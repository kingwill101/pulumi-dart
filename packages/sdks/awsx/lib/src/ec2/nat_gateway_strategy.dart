import 'package:pulumi/pulumi.dart' as pulumi;

/// A strategy for creating NAT Gateways for private subnets within a VPC.
enum NatGatewayStrategy implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSingle("Single"),
  valueOnePerAz("OnePerAz");

  const NatGatewayStrategy(this.wireValue);
  @override
  final String wireValue;

  static NatGatewayStrategy fromValue(String value) {
    for (final item in NatGatewayStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewayStrategy value: $value');
  }
}
