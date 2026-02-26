/// The log type that this config enables.
enum AuditLogConfigLogType40 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType40(this.value);
  final String value;

  static AuditLogConfigLogType40 fromValue(String value) {
    for (final item in AuditLogConfigLogType40.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType40 value: $value');
  }
}
