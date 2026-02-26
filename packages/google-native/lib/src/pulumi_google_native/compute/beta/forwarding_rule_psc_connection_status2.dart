enum ForwardingRulePscConnectionStatus2 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatus2(this.value);
  final String value;

  static ForwardingRulePscConnectionStatus2 fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ForwardingRulePscConnectionStatus2 value: $value');
  }
}
