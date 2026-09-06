import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether outbound access is permitted for the specified URI pattern.
enum OutboundAccess implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const OutboundAccess(this.wireValue);
  @override
  final String wireValue;

  static OutboundAccess fromValue(String value) {
    for (final item in OutboundAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundAccess value: $value');
  }
}
