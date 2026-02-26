/// The log type that this config enables.
enum AuditLogConfigLogType70 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType70(this.value);
  final String value;

  static AuditLogConfigLogType70 fromValue(String value) {
    for (final item in AuditLogConfigLogType70.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType70 value: $value');
  }
}
