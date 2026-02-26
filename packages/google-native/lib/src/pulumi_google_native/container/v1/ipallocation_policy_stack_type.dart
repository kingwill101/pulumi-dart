/// The IP stack type of the cluster
enum IPAllocationPolicyStackType {
  stackTypeUnspecified("STACK_TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv4Ipv6("IPV4_IPV6");

  const IPAllocationPolicyStackType(this.value);
  final String value;

  static IPAllocationPolicyStackType fromValue(String value) {
    for (final item in IPAllocationPolicyStackType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationPolicyStackType value: $value');
  }
}
