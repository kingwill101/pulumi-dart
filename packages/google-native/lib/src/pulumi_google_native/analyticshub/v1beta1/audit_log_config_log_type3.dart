/// The log type that this config enables.
enum AuditLogConfigLogType3 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType3(this.value);
  final String value;

  static AuditLogConfigLogType3 fromValue(String value) {
    for (final item in AuditLogConfigLogType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType3 value: $value');
  }
}
