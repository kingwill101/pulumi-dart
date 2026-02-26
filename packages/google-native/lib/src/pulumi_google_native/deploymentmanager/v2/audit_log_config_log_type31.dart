/// The log type that this config enables.
enum AuditLogConfigLogType31 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType31(this.value);
  final String value;

  static AuditLogConfigLogType31 fromValue(String value) {
    for (final item in AuditLogConfigLogType31.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType31 value: $value');
  }
}
