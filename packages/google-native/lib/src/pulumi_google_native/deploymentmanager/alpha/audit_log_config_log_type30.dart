/// The log type that this config enables.
enum AuditLogConfigLogType30 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType30(this.value);
  final String value;

  static AuditLogConfigLogType30 fromValue(String value) {
    for (final item in AuditLogConfigLogType30.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType30 value: $value');
  }
}
