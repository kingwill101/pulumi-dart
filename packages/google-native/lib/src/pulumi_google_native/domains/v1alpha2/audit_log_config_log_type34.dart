/// The log type that this config enables.
enum AuditLogConfigLogType34 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType34(this.value);
  final String value;

  static AuditLogConfigLogType34 fromValue(String value) {
    for (final item in AuditLogConfigLogType34.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType34 value: $value');
  }
}
