/// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
enum RegionBackendServiceLoadBalancingScheme {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalidLoadBalancingScheme("INVALID_LOAD_BALANCING_SCHEME");

  const RegionBackendServiceLoadBalancingScheme(this.value);
  final String value;

  static RegionBackendServiceLoadBalancingScheme fromValue(String value) {
    for (final item in RegionBackendServiceLoadBalancingScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceLoadBalancingScheme value: $value');
  }
}

