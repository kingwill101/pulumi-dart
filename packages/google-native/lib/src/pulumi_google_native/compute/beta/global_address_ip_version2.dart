/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersion2 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersion2(this.value);
  final String value;

  static GlobalAddressIpVersion2 fromValue(String value) {
    for (final item in GlobalAddressIpVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersion2 value: $value');
  }
}
