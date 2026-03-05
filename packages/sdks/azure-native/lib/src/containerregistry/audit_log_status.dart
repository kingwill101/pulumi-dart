/// Indicates whether audit logs are enabled on the connected registry.
enum AuditLogStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AuditLogStatus(this.wireValue);
  final String wireValue;

  static AuditLogStatus fromValue(String value) {
    for (final item in AuditLogStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogStatus value: $value');
  }
}

