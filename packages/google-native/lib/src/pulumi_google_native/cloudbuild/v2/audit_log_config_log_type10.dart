/// The log type that this config enables.
enum AuditLogConfigLogType10 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType10(this.value);
  final String value;

  static AuditLogConfigLogType10 fromValue(String value) {
    for (final item in AuditLogConfigLogType10.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType10 value: $value');
  }
}
