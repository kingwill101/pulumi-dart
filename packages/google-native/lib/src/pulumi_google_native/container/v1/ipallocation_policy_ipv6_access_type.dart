/// The ipv6 access type (internal or external) when create_subnetwork is true
enum IPAllocationPolicyIpv6AccessType {
  ipv6AccessTypeUnspecified("IPV6_ACCESS_TYPE_UNSPECIFIED"),
  internal("INTERNAL"),
  external("EXTERNAL");

  const IPAllocationPolicyIpv6AccessType(this.value);
  final String value;

  static IPAllocationPolicyIpv6AccessType fromValue(String value) {
    for (final item in IPAllocationPolicyIpv6AccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IPAllocationPolicyIpv6AccessType value: $value');
  }
}
