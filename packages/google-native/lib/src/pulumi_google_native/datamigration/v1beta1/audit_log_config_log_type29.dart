/// The log type that this config enables.
enum AuditLogConfigLogType29 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType29(this.value);
  final String value;

  static AuditLogConfigLogType29 fromValue(String value) {
    for (final item in AuditLogConfigLogType29.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType29 value: $value');
  }
}
