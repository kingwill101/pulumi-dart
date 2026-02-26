/// The log type that this config enables.
enum AuditLogConfigLogType43 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType43(this.value);
  final String value;

  static AuditLogConfigLogType43 fromValue(String value) {
    for (final item in AuditLogConfigLogType43.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType43 value: $value');
  }
}
