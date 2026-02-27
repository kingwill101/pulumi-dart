enum LoadBalancerTypeApplicationloadbalancing {
  application("application"),
  network("network");

  const LoadBalancerTypeApplicationloadbalancing(this.value);
  final String value;

  static LoadBalancerTypeApplicationloadbalancing fromValue(String value) {
    for (final item in LoadBalancerTypeApplicationloadbalancing.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LoadBalancerTypeApplicationloadbalancing value: $value');
  }
}
