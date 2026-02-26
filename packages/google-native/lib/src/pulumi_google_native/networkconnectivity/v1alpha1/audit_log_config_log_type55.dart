/// The log type that this config enables.
enum AuditLogConfigLogType55 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType55(this.value);
  final String value;

  static AuditLogConfigLogType55 fromValue(String value) {
    for (final item in AuditLogConfigLogType55.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType55 value: $value');
  }
}
