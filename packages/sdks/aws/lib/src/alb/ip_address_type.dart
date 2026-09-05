import 'package:pulumi/pulumi.dart' as pulumi;

enum IpAddressType implements pulumi.PulumiEnum<String> {
  ipv4("ipv4"),
  dualstack("dualstack"),
  dualstackWithoutPublicIpv4("dualstack-without-public-ipv4");

  const IpAddressType(this.wireValue);
  @override
  final String wireValue;

  static IpAddressType fromValue(String value) {
    for (final item in IpAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAddressType value: $value');
  }
}
