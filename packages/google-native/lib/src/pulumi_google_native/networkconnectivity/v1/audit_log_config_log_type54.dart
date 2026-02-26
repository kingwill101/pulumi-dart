/// The log type that this config enables.
enum AuditLogConfigLogType54 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType54(this.value);
  final String value;

  static AuditLogConfigLogType54 fromValue(String value) {
    for (final item in AuditLogConfigLogType54.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType54 value: $value');
  }
}
