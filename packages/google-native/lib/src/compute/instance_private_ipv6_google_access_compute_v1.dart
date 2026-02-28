/// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
enum InstancePrivateIpv6GoogleAccessComputeV1 {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePrivateIpv6GoogleAccessComputeV1(this.value);
  final String value;

  static InstancePrivateIpv6GoogleAccessComputeV1 fromValue(String value) {
    for (final item in InstancePrivateIpv6GoogleAccessComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePrivateIpv6GoogleAccessComputeV1 value: $value');
  }
}

