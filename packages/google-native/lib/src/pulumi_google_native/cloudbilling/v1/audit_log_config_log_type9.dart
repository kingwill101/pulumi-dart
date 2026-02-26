/// The log type that this config enables.
enum AuditLogConfigLogType9 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType9(this.value);
  final String value;

  static AuditLogConfigLogType9 fromValue(String value) {
    for (final item in AuditLogConfigLogType9.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType9 value: $value');
  }
}
