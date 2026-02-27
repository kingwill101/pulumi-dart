/// The log type that this config enables.
enum AuditLogConfigLogTypeGameservicesV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGameservicesV1(this.value);
  final String value;

  static AuditLogConfigLogTypeGameservicesV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGameservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeGameservicesV1 value: $value');
  }
}
