/// The log type that this config enables.
enum AuditLogConfigLogType27 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType27(this.value);
  final String value;

  static AuditLogConfigLogType27 fromValue(String value) {
    for (final item in AuditLogConfigLogType27.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType27 value: $value');
  }
}
