/// The log type that this config enables.
enum AuditLogConfigLogType57 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType57(this.value);
  final String value;

  static AuditLogConfigLogType57 fromValue(String value) {
    for (final item in AuditLogConfigLogType57.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType57 value: $value');
  }
}
