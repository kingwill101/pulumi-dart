enum GlobalForwardingRulePscConnectionStatus2 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatus2(this.value);
  final String value;

  static GlobalForwardingRulePscConnectionStatus2 fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GlobalForwardingRulePscConnectionStatus2 value: $value');
  }
}
