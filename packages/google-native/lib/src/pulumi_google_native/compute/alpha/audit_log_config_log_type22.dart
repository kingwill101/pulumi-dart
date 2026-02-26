/// The log type that this config enables.
enum AuditLogConfigLogType22 {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogType22(this.value);
  final String value;

  static AuditLogConfigLogType22 fromValue(String value) {
    for (final item in AuditLogConfigLogType22.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType22 value: $value');
  }
}
