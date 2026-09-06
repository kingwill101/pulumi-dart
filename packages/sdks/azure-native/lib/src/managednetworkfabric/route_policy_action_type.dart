import 'package:pulumi/pulumi.dart' as pulumi;

/// Action type. Example: Permit | Deny | Continue.
enum RoutePolicyActionType implements pulumi.PulumiEnum<String> {
  valuePermit("Permit"),
  valueDeny("Deny"),
  valueContinue("Continue");

  const RoutePolicyActionType(this.wireValue);
  @override
  final String wireValue;

  static RoutePolicyActionType fromValue(String value) {
    for (final item in RoutePolicyActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutePolicyActionType value: $value');
  }
}
