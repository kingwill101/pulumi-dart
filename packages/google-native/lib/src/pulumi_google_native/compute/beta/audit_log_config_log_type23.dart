/// The log type that this config enables.
enum AuditLogConfigLogType23 {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogType23(this.value);
  final String value;

  static AuditLogConfigLogType23 fromValue(String value) {
    for (final item in AuditLogConfigLogType23.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType23 value: $value');
  }
}
