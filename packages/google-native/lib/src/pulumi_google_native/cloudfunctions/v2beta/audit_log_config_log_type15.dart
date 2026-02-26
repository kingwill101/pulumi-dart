/// The log type that this config enables.
enum AuditLogConfigLogType15 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType15(this.value);
  final String value;

  static AuditLogConfigLogType15 fromValue(String value) {
    for (final item in AuditLogConfigLogType15.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType15 value: $value');
  }
}
