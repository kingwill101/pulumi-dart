/// The log type that this config enables.
enum AuditLogConfigLogType60 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType60(this.value);
  final String value;

  static AuditLogConfigLogType60 fromValue(String value) {
    for (final item in AuditLogConfigLogType60.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType60 value: $value');
  }
}
