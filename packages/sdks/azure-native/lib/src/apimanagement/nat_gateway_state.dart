import 'package:pulumi/pulumi.dart' as pulumi;

/// Property can be used to enable NAT Gateway for this API Management service.
enum NatGatewayState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const NatGatewayState(this.wireValue);
  @override
  final String wireValue;

  static NatGatewayState fromValue(String value) {
    for (final item in NatGatewayState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewayState value: $value');
  }
}
