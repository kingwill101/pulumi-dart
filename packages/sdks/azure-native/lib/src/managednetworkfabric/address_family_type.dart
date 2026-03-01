/// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
enum AddressFamilyType {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const AddressFamilyType(this.value);
  final String value;

  static AddressFamilyType fromValue(String value) {
    for (final item in AddressFamilyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressFamilyType value: $value');
  }
}

