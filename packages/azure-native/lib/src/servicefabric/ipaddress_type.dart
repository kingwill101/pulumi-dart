/// The IP address type of this frontend configuration. If omitted the default value is IPv4.
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

