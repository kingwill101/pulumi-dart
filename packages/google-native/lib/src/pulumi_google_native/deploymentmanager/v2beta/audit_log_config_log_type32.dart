/// The log type that this config enables.
enum AuditLogConfigLogType32 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType32(this.value);
  final String value;

  static AuditLogConfigLogType32 fromValue(String value) {
    for (final item in AuditLogConfigLogType32.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType32 value: $value');
  }
}
