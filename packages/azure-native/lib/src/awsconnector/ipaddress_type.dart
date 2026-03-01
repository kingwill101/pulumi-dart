/// Property value
enum IPAddressType {
  dualstack("dualstack"),
  ipv4("ipv4");

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

