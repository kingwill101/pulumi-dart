/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum OrganizationAddressGroupType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const OrganizationAddressGroupType2(this.value);
  final String value;

  static OrganizationAddressGroupType2 fromValue(String value) {
    for (final item in OrganizationAddressGroupType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationAddressGroupType2 value: $value');
  }
}
