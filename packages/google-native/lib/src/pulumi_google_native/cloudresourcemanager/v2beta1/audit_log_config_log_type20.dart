/// The log type that this config enables.
enum AuditLogConfigLogType20 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType20(this.value);
  final String value;

  static AuditLogConfigLogType20 fromValue(String value) {
    for (final item in AuditLogConfigLogType20.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType20 value: $value');
  }
}
