/// The log type that this config enables.
enum AuditLogConfigLogType37 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType37(this.value);
  final String value;

  static AuditLogConfigLogType37 fromValue(String value) {
    for (final item in AuditLogConfigLogType37.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType37 value: $value');
  }
}
