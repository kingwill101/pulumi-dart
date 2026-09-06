import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of IP Address. IPv4 or IPv6
enum IPAddressType implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const IPAddressType(this.wireValue);
  @override
  final String wireValue;

  static IPAddressType fromValue(String value) {
    for (final item in IPAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressType value: $value');
  }
}
