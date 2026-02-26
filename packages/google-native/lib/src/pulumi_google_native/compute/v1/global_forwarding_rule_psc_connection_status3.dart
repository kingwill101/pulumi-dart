enum GlobalForwardingRulePscConnectionStatus3 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatus3(this.value);
  final String value;

  static GlobalForwardingRulePscConnectionStatus3 fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatus3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GlobalForwardingRulePscConnectionStatus3 value: $value');
  }
}
