/// The log type that this config enables.
enum AuditLogConfigLogType14 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType14(this.value);
  final String value;

  static AuditLogConfigLogType14 fromValue(String value) {
    for (final item in AuditLogConfigLogType14.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType14 value: $value');
  }
}
