/// The type of the load balancer.
enum LoadBalancerType {
  valueBreadthFirst("BreadthFirst"),
  valueDepthFirst("DepthFirst"),
  valuePersistent("Persistent");

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

