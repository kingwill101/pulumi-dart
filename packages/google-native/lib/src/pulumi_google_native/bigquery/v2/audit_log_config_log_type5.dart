/// The log type that this config enables.
enum AuditLogConfigLogType5 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType5(this.value);
  final String value;

  static AuditLogConfigLogType5 fromValue(String value) {
    for (final item in AuditLogConfigLogType5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType5 value: $value');
  }
}
