/// Type of DHCP: SERVER or RELAY.
enum DhcpTypeEnum {
  sERVER("SERVER"),
  rELAY("RELAY");

  const DhcpTypeEnum(this.wireValue);
  final String wireValue;

  static DhcpTypeEnum fromValue(String value) {
    for (final item in DhcpTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DhcpTypeEnum value: $value');
  }
}

