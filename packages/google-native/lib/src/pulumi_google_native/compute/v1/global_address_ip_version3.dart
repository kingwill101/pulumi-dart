/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersion3 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersion3(this.value);
  final String value;

  static GlobalAddressIpVersion3 fromValue(String value) {
    for (final item in GlobalAddressIpVersion3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersion3 value: $value');
  }
}
