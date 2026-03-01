/// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
enum InstancePrivateIpv6GoogleAccess {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePrivateIpv6GoogleAccess(this.value);
  final String value;

  static InstancePrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in InstancePrivateIpv6GoogleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePrivateIpv6GoogleAccess value: $value',
    );
  }
}
