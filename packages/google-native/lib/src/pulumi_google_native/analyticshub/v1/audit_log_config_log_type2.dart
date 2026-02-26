/// The log type that this config enables.
enum AuditLogConfigLogType2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType2(this.value);
  final String value;

  static AuditLogConfigLogType2 fromValue(String value) {
    for (final item in AuditLogConfigLogType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType2 value: $value');
  }
}
