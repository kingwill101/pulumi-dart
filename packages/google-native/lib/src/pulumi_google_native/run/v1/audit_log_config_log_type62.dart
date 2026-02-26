/// The log type that this config enables.
enum AuditLogConfigLogType62 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType62(this.value);
  final String value;

  static AuditLogConfigLogType62 fromValue(String value) {
    for (final item in AuditLogConfigLogType62.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType62 value: $value');
  }
}
