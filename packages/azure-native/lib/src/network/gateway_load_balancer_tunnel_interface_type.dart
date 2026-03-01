/// Traffic type of gateway load balancer tunnel interface.
enum GatewayLoadBalancerTunnelInterfaceType {
  valueNone("None"),
  valueInternal("Internal"),
  valueExternal("External");

  const GatewayLoadBalancerTunnelInterfaceType(this.value);
  final String value;

  static GatewayLoadBalancerTunnelInterfaceType fromValue(String value) {
    for (final item in GatewayLoadBalancerTunnelInterfaceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayLoadBalancerTunnelInterfaceType value: $value');
  }
}

