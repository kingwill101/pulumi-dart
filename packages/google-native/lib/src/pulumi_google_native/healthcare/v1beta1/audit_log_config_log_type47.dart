/// The log type that this config enables.
enum AuditLogConfigLogType47 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType47(this.value);
  final String value;

  static AuditLogConfigLogType47 fromValue(String value) {
    for (final item in AuditLogConfigLogType47.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType47 value: $value');
  }
}
