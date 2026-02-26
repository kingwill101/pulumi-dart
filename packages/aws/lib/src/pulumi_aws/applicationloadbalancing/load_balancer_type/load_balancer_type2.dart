enum LoadBalancerType2 {
  application("application"),
  network("network");

  const LoadBalancerType2(this.value);
  final String value;

  static LoadBalancerType2 fromValue(String value) {
    for (final item in LoadBalancerType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerType2 value: $value');
  }
}
