import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
enum PublicIPType implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueDualStack("DualStack");

  const PublicIPType(this.wireValue);
  @override
  final String wireValue;

  static PublicIPType fromValue(String value) {
    for (final item in PublicIPType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPType value: $value');
  }
}
