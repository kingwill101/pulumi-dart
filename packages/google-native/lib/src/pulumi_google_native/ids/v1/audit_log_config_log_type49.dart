/// The log type that this config enables.
enum AuditLogConfigLogType49 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType49(this.value);
  final String value;

  static AuditLogConfigLogType49 fromValue(String value) {
    for (final item in AuditLogConfigLogType49.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType49 value: $value');
  }
}
