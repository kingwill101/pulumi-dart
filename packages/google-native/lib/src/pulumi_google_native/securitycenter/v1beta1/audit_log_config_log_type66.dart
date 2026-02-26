/// The log type that this config enables.
enum AuditLogConfigLogType66 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType66(this.value);
  final String value;

  static AuditLogConfigLogType66 fromValue(String value) {
    for (final item in AuditLogConfigLogType66.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType66 value: $value');
  }
}
