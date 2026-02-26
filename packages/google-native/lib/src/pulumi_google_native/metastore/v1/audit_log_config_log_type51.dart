/// The log type that this config enables.
enum AuditLogConfigLogType51 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType51(this.value);
  final String value;

  static AuditLogConfigLogType51 fromValue(String value) {
    for (final item in AuditLogConfigLogType51.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType51 value: $value');
  }
}
