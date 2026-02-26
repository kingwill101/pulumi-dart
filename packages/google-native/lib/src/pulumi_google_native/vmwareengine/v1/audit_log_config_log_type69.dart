/// The log type that this config enables.
enum AuditLogConfigLogType69 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType69(this.value);
  final String value;

  static AuditLogConfigLogType69 fromValue(String value) {
    for (final item in AuditLogConfigLogType69.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType69 value: $value');
  }
}
