/// Load Balancer Type
enum LoadBalancerType {
  publicIp("PublicIp"),
  internalLoadBalancer("InternalLoadBalancer");

  const LoadBalancerType(this.wireValue);
  final String wireValue;

  static LoadBalancerType fromValue(String value) {
    for (final item in LoadBalancerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerType value: $value');
  }
}
