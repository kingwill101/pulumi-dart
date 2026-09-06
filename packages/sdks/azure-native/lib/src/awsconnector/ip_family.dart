import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum IpFamily implements pulumi.PulumiEnum<String> {
  ipv4("ipv4"),
  ipv6("ipv6");

  const IpFamily(this.wireValue);
  @override
  final String wireValue;

  static IpFamily fromValue(String value) {
    for (final item in IpFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFamily value: $value');
  }
}
