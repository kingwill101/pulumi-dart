/// Defines the state of a log scrubbing rule. Default value is enabled.
enum ScrubbingRuleEntryState {
  enabled("Enabled"),
  disabled("Disabled");

  const ScrubbingRuleEntryState(this.wireValue);
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
