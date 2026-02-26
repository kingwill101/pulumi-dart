/// The log type that this config enables.
enum AuditLogConfigLogType53 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType53(this.value);
  final String value;

  static AuditLogConfigLogType53 fromValue(String value) {
    for (final item in AuditLogConfigLogType53.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType53 value: $value');
  }
}
