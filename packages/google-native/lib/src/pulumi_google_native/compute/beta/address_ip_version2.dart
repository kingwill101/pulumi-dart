/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum AddressIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const AddressIpVersion2(this.value);
  final String value;

  static AddressIpVersion2 fromValue(String value) {
    for (final item in AddressIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpVersion2 value: $value');
  }
}
