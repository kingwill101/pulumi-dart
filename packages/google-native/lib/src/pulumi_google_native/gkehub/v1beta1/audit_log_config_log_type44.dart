/// The log type that this config enables.
enum AuditLogConfigLogType44 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType44(this.value);
  final String value;

  static AuditLogConfigLogType44 fromValue(String value) {
    for (final item in AuditLogConfigLogType44.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType44 value: $value');
  }
}
