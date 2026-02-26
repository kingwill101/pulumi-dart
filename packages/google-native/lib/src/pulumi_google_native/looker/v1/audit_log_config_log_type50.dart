/// The log type that this config enables.
enum AuditLogConfigLogType50 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType50(this.value);
  final String value;

  static AuditLogConfigLogType50 fromValue(String value) {
    for (final item in AuditLogConfigLogType50.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType50 value: $value');
  }
}
