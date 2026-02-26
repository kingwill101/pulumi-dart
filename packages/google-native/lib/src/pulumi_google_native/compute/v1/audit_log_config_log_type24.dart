/// The log type that this config enables.
enum AuditLogConfigLogType24 {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogType24(this.value);
  final String value;

  static AuditLogConfigLogType24 fromValue(String value) {
    for (final item in AuditLogConfigLogType24.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType24 value: $value');
  }
}
