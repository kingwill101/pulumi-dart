/// This field is for internal use. This field can be both set at resource creation time and updated using patch.
enum SubnetworkPrivateIpv6GoogleAccess {
  disableGoogleAccess("DISABLE_GOOGLE_ACCESS"),
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE");

  const SubnetworkPrivateIpv6GoogleAccess(this.value);
  final String value;

  static SubnetworkPrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in SubnetworkPrivateIpv6GoogleAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SubnetworkPrivateIpv6GoogleAccess value: $value',
    );
  }
}
