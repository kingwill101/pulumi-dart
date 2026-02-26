/// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
enum SubnetworkIpv6AccessType3 {
  external("EXTERNAL"),
  internal("INTERNAL");

  const SubnetworkIpv6AccessType3(this.value);
  final String value;

  static SubnetworkIpv6AccessType3 fromValue(String value) {
    for (final item in SubnetworkIpv6AccessType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkIpv6AccessType3 value: $value');
  }
}
