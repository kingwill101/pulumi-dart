/// The log type that this config enables.
enum AuditLogConfigLogType68 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType68(this.value);
  final String value;

  static AuditLogConfigLogType68 fromValue(String value) {
    for (final item in AuditLogConfigLogType68.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType68 value: $value');
  }
}
