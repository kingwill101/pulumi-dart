/// The log type that this config enables.
enum AuditLogConfigLogType19 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType19(this.value);
  final String value;

  static AuditLogConfigLogType19 fromValue(String value) {
    for (final item in AuditLogConfigLogType19.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType19 value: $value');
  }
}
