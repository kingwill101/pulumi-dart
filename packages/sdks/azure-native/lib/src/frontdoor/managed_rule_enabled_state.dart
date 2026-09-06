import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
enum ManagedRuleEnabledState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const ManagedRuleEnabledState(this.wireValue);
  @override
  final String wireValue;

  static ManagedRuleEnabledState fromValue(String value) {
    for (final item in ManagedRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleEnabledState value: $value');
  }
}
