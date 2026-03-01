/// Enforcement mode for policy. AuditOnly, Enforce, or None.
enum PolicyAction {
  valueAuditOnly("AuditOnly"),
  valueEnforce("Enforce"),
  valueNone("None");

  const PolicyAction(this.value);
  final String value;

  static PolicyAction fromValue(String value) {
    for (final item in PolicyAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyAction value: $value');
  }
}

