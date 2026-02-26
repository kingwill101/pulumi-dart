/// The log type that this config enables.
enum AuditLogConfigLogType64 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType64(this.value);
  final String value;

  static AuditLogConfigLogType64 fromValue(String value) {
    for (final item in AuditLogConfigLogType64.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType64 value: $value');
  }
}
