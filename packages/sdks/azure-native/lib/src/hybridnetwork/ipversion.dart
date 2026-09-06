import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address version.
enum IPVersion implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueIPv4("IPv4");

  const IPVersion(this.wireValue);
  @override
  final String wireValue;

  static IPVersion fromValue(String value) {
    for (final item in IPVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPVersion value: $value');
  }
}
