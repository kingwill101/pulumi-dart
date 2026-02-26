/// The log type that this config enables.
enum AuditLogConfigLogType18 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType18(this.value);
  final String value;

  static AuditLogConfigLogType18 fromValue(String value) {
    for (final item in AuditLogConfigLogType18.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType18 value: $value');
  }
}
