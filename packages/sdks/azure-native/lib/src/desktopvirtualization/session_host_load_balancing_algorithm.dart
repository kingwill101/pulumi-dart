/// Load balancing algorithm for ramp up period.
enum SessionHostLoadBalancingAlgorithm {
  valueBreadthFirst("BreadthFirst"),
  valueDepthFirst("DepthFirst");

  const SessionHostLoadBalancingAlgorithm(this.value);
  final String value;

  static SessionHostLoadBalancingAlgorithm fromValue(String value) {
    for (final item in SessionHostLoadBalancingAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHostLoadBalancingAlgorithm value: $value');
  }
}

