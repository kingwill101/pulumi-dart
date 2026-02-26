/// Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
enum AddressGroupType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv6("IPV6");

  const AddressGroupType2(this.value);
  final String value;

  static AddressGroupType2 fromValue(String value) {
    for (final item in AddressGroupType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressGroupType2 value: $value');
  }
}
