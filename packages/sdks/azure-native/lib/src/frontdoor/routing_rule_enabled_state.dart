/// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
enum RoutingRuleEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const RoutingRuleEnabledState(this.wireValue);
  final String wireValue;

  static RoutingRuleEnabledState fromValue(String value) {
    for (final item in RoutingRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleEnabledState value: $value');
  }
}

