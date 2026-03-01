/// Type of DHCP: SERVER or RELAY.
enum DhcpTypeEnum {
  sERVER("SERVER"),
  rELAY("RELAY");

  const DhcpTypeEnum(this.value);
  final String value;

  static DhcpTypeEnum fromValue(String value) {
    for (final item in DhcpTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DhcpTypeEnum value: $value');
  }
}

