import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum IPAddressType implements pulumi.PulumiEnum<String> {
  dualstack("dualstack"),
  ipv4("ipv4");

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
