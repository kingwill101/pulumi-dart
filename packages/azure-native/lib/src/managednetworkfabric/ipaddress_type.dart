/// Type of IP Address. IPv4 or IPv6
enum IPAddressType {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const IPAddressType(this.value);
  final String value;

  static IPAddressType fromValue(String value) {
    for (final item in IPAddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressType value: $value');
  }
}

