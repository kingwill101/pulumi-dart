/// The log type that this config enables.
enum AuditLogConfigLogType67 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType67(this.value);
  final String value;

  static AuditLogConfigLogType67 fromValue(String value) {
    for (final item in AuditLogConfigLogType67.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType67 value: $value');
  }
}
