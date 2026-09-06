import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the rule set action.
enum ManagedRuleSetActionType implements pulumi.PulumiEnum<String> {
  block("Block"),
  log("Log"),
  redirect("Redirect");

  const ManagedRuleSetActionType(this.wireValue);
  @override
  final String wireValue;

  static ManagedRuleSetActionType fromValue(String value) {
    for (final item in ManagedRuleSetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleSetActionType value: $value');
  }
}
