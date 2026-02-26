/// The log type that this config enables.
enum AuditLogConfigLogType38 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType38(this.value);
  final String value;

  static AuditLogConfigLogType38 fromValue(String value) {
    for (final item in AuditLogConfigLogType38.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType38 value: $value');
  }
}
