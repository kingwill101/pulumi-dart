enum ForwardingRulePscConnectionStatusComputeBeta {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatusComputeBeta(this.value);
  final String value;

  static ForwardingRulePscConnectionStatusComputeBeta fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatusComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ForwardingRulePscConnectionStatusComputeBeta value: $value');
  }
}
