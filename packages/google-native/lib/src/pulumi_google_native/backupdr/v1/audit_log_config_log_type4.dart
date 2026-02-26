/// The log type that this config enables.
enum AuditLogConfigLogType4 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType4(this.value);
  final String value;

  static AuditLogConfigLogType4 fromValue(String value) {
    for (final item in AuditLogConfigLogType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType4 value: $value');
  }
}
