/// Load Balancer Type
enum LoadBalancerType {
  valuePublicIp("PublicIp"),
  valueInternalLoadBalancer("InternalLoadBalancer");

  const LoadBalancerType(this.value);
  final String value;

  static LoadBalancerType fromValue(String value) {
    for (final item in LoadBalancerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerType value: $value');
  }
}

