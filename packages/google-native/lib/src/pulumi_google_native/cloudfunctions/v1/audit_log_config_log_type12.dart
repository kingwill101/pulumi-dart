/// The log type that this config enables.
enum AuditLogConfigLogType12 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType12(this.value);
  final String value;

  static AuditLogConfigLogType12 fromValue(String value) {
    for (final item in AuditLogConfigLogType12.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType12 value: $value');
  }
}
