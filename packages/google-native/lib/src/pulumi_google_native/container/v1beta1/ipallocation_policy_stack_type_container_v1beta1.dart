/// IP stack type
enum IPAllocationPolicyStackTypeContainerV1beta1 {
  stackTypeUnspecified("STACK_TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv4Ipv6("IPV4_IPV6");

  const IPAllocationPolicyStackTypeContainerV1beta1(this.value);
  final String value;

  static IPAllocationPolicyStackTypeContainerV1beta1 fromValue(String value) {
    for (final item in IPAllocationPolicyStackTypeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IPAllocationPolicyStackTypeContainerV1beta1 value: $value');
  }
}
