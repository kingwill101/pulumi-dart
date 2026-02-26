enum ForwardingRulePscConnectionStatus3 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatus3(this.value);
  final String value;

  static ForwardingRulePscConnectionStatus3 fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatus3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ForwardingRulePscConnectionStatus3 value: $value');
  }
}
