/// Which load balancer type is installed for Cloud Run.
enum CloudRunConfigLoadBalancerType2 {
  loadBalancerTypeUnspecified("LOAD_BALANCER_TYPE_UNSPECIFIED"),
  loadBalancerTypeExternal("LOAD_BALANCER_TYPE_EXTERNAL"),
  loadBalancerTypeInternal("LOAD_BALANCER_TYPE_INTERNAL");

  const CloudRunConfigLoadBalancerType2(this.value);
  final String value;

  static CloudRunConfigLoadBalancerType2 fromValue(String value) {
    for (final item in CloudRunConfigLoadBalancerType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CloudRunConfigLoadBalancerType2 value: $value');
  }
}
