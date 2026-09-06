import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction that specifies whether the access rules is inbound/outbound.
enum AccessRuleDirection implements pulumi.PulumiEnum<String> {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const AccessRuleDirection(this.wireValue);
  @override
  final String wireValue;

  static AccessRuleDirection fromValue(String value) {
    for (final item in AccessRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRuleDirection value: $value');
  }
}
