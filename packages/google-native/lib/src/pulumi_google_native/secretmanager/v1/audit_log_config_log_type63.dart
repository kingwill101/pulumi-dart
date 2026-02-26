/// The log type that this config enables.
enum AuditLogConfigLogType63 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType63(this.value);
  final String value;

  static AuditLogConfigLogType63 fromValue(String value) {
    for (final item in AuditLogConfigLogType63.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType63 value: $value');
  }
}
