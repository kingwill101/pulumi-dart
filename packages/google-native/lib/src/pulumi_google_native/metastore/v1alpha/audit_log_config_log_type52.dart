/// The log type that this config enables.
enum AuditLogConfigLogType52 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType52(this.value);
  final String value;

  static AuditLogConfigLogType52 fromValue(String value) {
    for (final item in AuditLogConfigLogType52.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType52 value: $value');
  }
}
