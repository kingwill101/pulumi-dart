/// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
enum BackendServiceLoadBalancingSchemeComputeV1 {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalidLoadBalancingScheme("INVALID_LOAD_BALANCING_SCHEME");

  const BackendServiceLoadBalancingSchemeComputeV1(this.value);
  final String value;

  static BackendServiceLoadBalancingSchemeComputeV1 fromValue(String value) {
    for (final item in BackendServiceLoadBalancingSchemeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackendServiceLoadBalancingSchemeComputeV1 value: $value');
  }
}
