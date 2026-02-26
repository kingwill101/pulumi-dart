/// The log type that this config enables.
enum AuditLogConfigLogType25 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType25(this.value);
  final String value;

  static AuditLogConfigLogType25 fromValue(String value) {
    for (final item in AuditLogConfigLogType25.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType25 value: $value');
  }
}
