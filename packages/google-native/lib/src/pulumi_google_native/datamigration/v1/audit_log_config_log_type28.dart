/// The log type that this config enables.
enum AuditLogConfigLogType28 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType28(this.value);
  final String value;

  static AuditLogConfigLogType28 fromValue(String value) {
    for (final item in AuditLogConfigLogType28.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType28 value: $value');
  }
}
