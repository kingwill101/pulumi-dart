/// The log type that this config enables.
enum AuditLogConfigLogType7 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType7(this.value);
  final String value;

  static AuditLogConfigLogType7 fromValue(String value) {
    for (final item in AuditLogConfigLogType7.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType7 value: $value');
  }
}
