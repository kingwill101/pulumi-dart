/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum AddressIpVersion3 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const AddressIpVersion3(this.value);
  final String value;

  static AddressIpVersion3 fromValue(String value) {
    for (final item in AddressIpVersion3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpVersion3 value: $value');
  }
}
