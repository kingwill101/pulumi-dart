/// The log type that this config enables.
enum AuditLogConfigLogType11 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType11(this.value);
  final String value;

  static AuditLogConfigLogType11 fromValue(String value) {
    for (final item in AuditLogConfigLogType11.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType11 value: $value');
  }
}
