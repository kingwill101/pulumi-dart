/// The log type that this config enables.
enum AuditLogConfigLogType6 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType6(this.value);
  final String value;

  static AuditLogConfigLogType6 fromValue(String value) {
    for (final item in AuditLogConfigLogType6.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType6 value: $value');
  }
}
