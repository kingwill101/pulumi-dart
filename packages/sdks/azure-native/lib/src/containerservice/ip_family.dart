import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP version to use for cluster networking and IP assignment.
enum IpFamily implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

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
