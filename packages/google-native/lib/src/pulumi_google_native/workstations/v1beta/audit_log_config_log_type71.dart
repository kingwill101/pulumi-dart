/// The log type that this config enables.
enum AuditLogConfigLogType71 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType71(this.value);
  final String value;

  static AuditLogConfigLogType71 fromValue(String value) {
    for (final item in AuditLogConfigLogType71.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType71 value: $value');
  }
}
