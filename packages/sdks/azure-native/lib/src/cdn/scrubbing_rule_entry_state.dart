import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the state of a log scrubbing rule. Default value is enabled.
enum ScrubbingRuleEntryState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ScrubbingRuleEntryState(this.wireValue);
  @override
  final String wireValue;

  static ScrubbingRuleEntryState fromValue(String value) {
    for (final item in ScrubbingRuleEntryState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryState value: $value');
  }
}
