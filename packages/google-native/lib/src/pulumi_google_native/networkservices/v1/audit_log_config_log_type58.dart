/// The log type that this config enables.
enum AuditLogConfigLogType58 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType58(this.value);
  final String value;

  static AuditLogConfigLogType58 fromValue(String value) {
    for (final item in AuditLogConfigLogType58.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType58 value: $value');
  }
}
