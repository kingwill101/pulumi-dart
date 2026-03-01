/// The type of endpoint. Default: Gateway
enum VpcEndpointType {
  gateway("Gateway"),
  gatewayLoadBalancer("GatewayLoadBalancer"),
  interface("Interface");

  const VpcEndpointType(this.value);
  final String value;

  static VpcEndpointType fromValue(String value) {
    for (final item in VpcEndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpcEndpointType value: $value');
  }
}

