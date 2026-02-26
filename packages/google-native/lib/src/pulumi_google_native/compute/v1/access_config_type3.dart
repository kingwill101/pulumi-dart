/// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
enum AccessConfigType3 {
  directIpv6("DIRECT_IPV6"),
  oneToOneNat("ONE_TO_ONE_NAT");

  const AccessConfigType3(this.value);
  final String value;

  static AccessConfigType3 fromValue(String value) {
    for (final item in AccessConfigType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessConfigType3 value: $value');
  }
}
