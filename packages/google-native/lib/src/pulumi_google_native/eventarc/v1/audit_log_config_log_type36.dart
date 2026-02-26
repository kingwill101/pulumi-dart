/// The log type that this config enables.
enum AuditLogConfigLogType36 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType36(this.value);
  final String value;

  static AuditLogConfigLogType36 fromValue(String value) {
    for (final item in AuditLogConfigLogType36.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType36 value: $value');
  }
}
