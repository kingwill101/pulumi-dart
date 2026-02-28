/// The ipv6 access type (internal or external) when create_subnetwork is true
enum IPAllocationPolicyIpv6AccessTypeContainerV1beta1 {
  ipv6AccessTypeUnspecified("IPV6_ACCESS_TYPE_UNSPECIFIED"),
  internal("INTERNAL"),
  external("EXTERNAL");

  const IPAllocationPolicyIpv6AccessTypeContainerV1beta1(this.value);
  final String value;

  static IPAllocationPolicyIpv6AccessTypeContainerV1beta1 fromValue(String value) {
    for (final item in IPAllocationPolicyIpv6AccessTypeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationPolicyIpv6AccessTypeContainerV1beta1 value: $value');
  }
}

