/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersion(this.value);
  final String value;

  static GlobalAddressIpVersion fromValue(String value) {
    for (final item in GlobalAddressIpVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersion value: $value');
  }
}
