/// The log type that this config enables.
enum AuditLogConfigLogType21 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType21(this.value);
  final String value;

  static AuditLogConfigLogType21 fromValue(String value) {
    for (final item in AuditLogConfigLogType21.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType21 value: $value');
  }
}
