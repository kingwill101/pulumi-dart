/// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
enum RegionBackendServiceLoadBalancingSchemeComputeBeta {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalidLoadBalancingScheme("INVALID_LOAD_BALANCING_SCHEME");

  const RegionBackendServiceLoadBalancingSchemeComputeBeta(this.value);
  final String value;

  static RegionBackendServiceLoadBalancingSchemeComputeBeta fromValue(String value) {
    for (final item in RegionBackendServiceLoadBalancingSchemeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceLoadBalancingSchemeComputeBeta value: $value');
  }
}

