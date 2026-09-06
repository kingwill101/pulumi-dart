import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
enum CustomRuleEnabledState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const CustomRuleEnabledState(this.wireValue);
  @override
  final String wireValue;

  static CustomRuleEnabledState fromValue(String value) {
    for (final item in CustomRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomRuleEnabledState value: $value');
  }
}
