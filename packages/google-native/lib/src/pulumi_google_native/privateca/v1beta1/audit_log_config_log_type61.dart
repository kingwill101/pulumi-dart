/// The log type that this config enables.
enum AuditLogConfigLogType61 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType61(this.value);
  final String value;

  static AuditLogConfigLogType61 fromValue(String value) {
    for (final item in AuditLogConfigLogType61.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType61 value: $value');
  }
}
