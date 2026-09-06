import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of DHCP: SERVER or RELAY.
enum DhcpTypeEnum implements pulumi.PulumiEnum<String> {
  sERVER("SERVER"),
  rELAY("RELAY");

  const DhcpTypeEnum(this.wireValue);
  @override
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
