/// The log type that this config enables.
enum AuditLogConfigLogType65 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType65(this.value);
  final String value;

  static AuditLogConfigLogType65 fromValue(String value) {
    for (final item in AuditLogConfigLogType65.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType65 value: $value');
  }
}
