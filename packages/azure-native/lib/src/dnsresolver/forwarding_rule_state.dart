/// The state of forwarding rule.
enum ForwardingRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ForwardingRuleState(this.value);
  final String value;

  static ForwardingRuleState fromValue(String value) {
    for (final item in ForwardingRuleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleState value: $value');
  }
}

