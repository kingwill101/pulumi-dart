enum GlobalForwardingRulePscConnectionStatus {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatus(this.value);
  final String value;

  static GlobalForwardingRulePscConnectionStatus fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GlobalForwardingRulePscConnectionStatus value: $value');
  }
}
