enum ForwardingRulePscConnectionStatus {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatus(this.value);
  final String value;

  static ForwardingRulePscConnectionStatus fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ForwardingRulePscConnectionStatus value: $value',
    );
  }
}
