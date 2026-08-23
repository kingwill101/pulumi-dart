/// The state of forwarding rule.
enum ForwardingRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ForwardingRuleState(this.wireValue);
  final String wireValue;

  static ForwardingRuleState fromValue(String value) {
    for (final item in ForwardingRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleState value: $value');
  }
}
