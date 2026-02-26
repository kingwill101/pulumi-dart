/// The log type that this config enables.
enum AuditLogConfigLogType48 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType48(this.value);
  final String value;

  static AuditLogConfigLogType48 fromValue(String value) {
    for (final item in AuditLogConfigLogType48.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType48 value: $value');
  }
}
