/// The log type that this config enables.
enum AuditLogConfigLogType39 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType39(this.value);
  final String value;

  static AuditLogConfigLogType39 fromValue(String value) {
    for (final item in AuditLogConfigLogType39.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType39 value: $value');
  }
}
