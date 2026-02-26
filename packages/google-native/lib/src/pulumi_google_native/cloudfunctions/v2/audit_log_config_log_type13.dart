/// The log type that this config enables.
enum AuditLogConfigLogType13 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType13(this.value);
  final String value;

  static AuditLogConfigLogType13 fromValue(String value) {
    for (final item in AuditLogConfigLogType13.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType13 value: $value');
  }
}
