/// Optional. The mapping rule state
enum MappingRuleState {
  stateUnspecified("STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  deleted("DELETED");

  const MappingRuleState(this.value);
  final String value;

  static MappingRuleState fromValue(String value) {
    for (final item in MappingRuleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MappingRuleState value: $value');
  }
}
