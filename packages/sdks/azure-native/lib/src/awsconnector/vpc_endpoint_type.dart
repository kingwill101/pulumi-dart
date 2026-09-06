import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of endpoint. Default: Gateway
enum VpcEndpointType implements pulumi.PulumiEnum<String> {
  gateway("Gateway"),
  gatewayLoadBalancer("GatewayLoadBalancer"),
  interface("Interface");

  const VpcEndpointType(this.wireValue);
  @override
  final String wireValue;

  static VpcEndpointType fromValue(String value) {
    for (final item in VpcEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpcEndpointType value: $value');
  }
}
