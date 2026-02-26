/// The log type that this config enables.
enum AuditLogConfigLogType56 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType56(this.value);
  final String value;

  static AuditLogConfigLogType56 fromValue(String value) {
    for (final item in AuditLogConfigLogType56.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType56 value: $value');
  }
}
