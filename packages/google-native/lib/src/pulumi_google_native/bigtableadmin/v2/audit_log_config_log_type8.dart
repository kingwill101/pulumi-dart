/// The log type that this config enables.
enum AuditLogConfigLogType8 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType8(this.value);
  final String value;

  static AuditLogConfigLogType8 fromValue(String value) {
    for (final item in AuditLogConfigLogType8.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType8 value: $value');
  }
}
