/// Enforcement mode for policy. AuditOnly, Enforce, or None.
enum PolicyAction {
  valueAuditOnly("AuditOnly"),
  valueEnforce("Enforce"),
  valueNone("None");

  const PolicyAction(this.wireValue);
  final String wireValue;

  static PolicyAction fromValue(String value) {
    for (final item in PolicyAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyAction value: $value');
  }
}
