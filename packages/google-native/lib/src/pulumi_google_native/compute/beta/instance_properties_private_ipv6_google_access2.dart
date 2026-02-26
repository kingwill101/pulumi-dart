/// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
enum InstancePropertiesPrivateIpv6GoogleAccess2 {
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK");

  const InstancePropertiesPrivateIpv6GoogleAccess2(this.value);
  final String value;

  static InstancePropertiesPrivateIpv6GoogleAccess2 fromValue(String value) {
    for (final item in InstancePropertiesPrivateIpv6GoogleAccess2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesPrivateIpv6GoogleAccess2 value: $value');
  }
}
