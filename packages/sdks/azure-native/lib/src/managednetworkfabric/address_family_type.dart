import 'package:pulumi/pulumi.dart' as pulumi;

/// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
enum AddressFamilyType implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const AddressFamilyType(this.wireValue);
  @override
  final String wireValue;

  static AddressFamilyType fromValue(String value) {
    for (final item in AddressFamilyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressFamilyType value: $value');
  }
}
