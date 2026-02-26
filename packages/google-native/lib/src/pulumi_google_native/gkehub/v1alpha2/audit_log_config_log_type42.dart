/// The log type that this config enables.
enum AuditLogConfigLogType42 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType42(this.value);
  final String value;

  static AuditLogConfigLogType42 fromValue(String value) {
    for (final item in AuditLogConfigLogType42.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType42 value: $value');
  }
}
