enum GlobalForwardingRulePscConnectionStatusComputeBeta {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatusComputeBeta(this.value);
  final String value;

  static GlobalForwardingRulePscConnectionStatusComputeBeta fromValue(
      String value) {
    for (final item
        in GlobalForwardingRulePscConnectionStatusComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GlobalForwardingRulePscConnectionStatusComputeBeta value: $value');
  }
}
