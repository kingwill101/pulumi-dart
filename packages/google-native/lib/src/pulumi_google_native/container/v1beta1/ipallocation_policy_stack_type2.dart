/// IP stack type
enum IPAllocationPolicyStackType2 {
  stackTypeUnspecified("STACK_TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv4Ipv6("IPV4_IPV6");

  const IPAllocationPolicyStackType2(this.value);
  final String value;

  static IPAllocationPolicyStackType2 fromValue(String value) {
    for (final item in IPAllocationPolicyStackType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationPolicyStackType2 value: $value');
  }
}
