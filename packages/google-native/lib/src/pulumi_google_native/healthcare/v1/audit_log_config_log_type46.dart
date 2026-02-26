/// The log type that this config enables.
enum AuditLogConfigLogType46 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType46(this.value);
  final String value;

  static AuditLogConfigLogType46 fromValue(String value) {
    for (final item in AuditLogConfigLogType46.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType46 value: $value');
  }
}
