/// The log type that this config enables.
enum AuditLogConfigLogType35 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType35(this.value);
  final String value;

  static AuditLogConfigLogType35 fromValue(String value) {
    for (final item in AuditLogConfigLogType35.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType35 value: $value');
  }
}
