/// The log type that this config enables.
enum AuditLogConfigLogType59 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType59(this.value);
  final String value;

  static AuditLogConfigLogType59 fromValue(String value) {
    for (final item in AuditLogConfigLogType59.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType59 value: $value');
  }
}
