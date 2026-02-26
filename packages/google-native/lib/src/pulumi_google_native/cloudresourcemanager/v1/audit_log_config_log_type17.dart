/// The log type that this config enables.
enum AuditLogConfigLogType17 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType17(this.value);
  final String value;

  static AuditLogConfigLogType17 fromValue(String value) {
    for (final item in AuditLogConfigLogType17.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType17 value: $value');
  }
}
