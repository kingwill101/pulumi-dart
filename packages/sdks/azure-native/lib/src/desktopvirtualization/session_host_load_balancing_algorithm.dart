/// Load balancing algorithm for ramp up period.
enum SessionHostLoadBalancingAlgorithm {
  valueBreadthFirst("BreadthFirst"),
  valueDepthFirst("DepthFirst");

  const SessionHostLoadBalancingAlgorithm(this.wireValue);
  final String wireValue;

  static SessionHostLoadBalancingAlgorithm fromValue(String value) {
    for (final item in SessionHostLoadBalancingAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHostLoadBalancingAlgorithm value: $value');
  }
}

