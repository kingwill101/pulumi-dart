/// The log type that this config enables.
enum AuditLogConfigLogTypeGameservicesV1beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGameservicesV1beta(this.value);
  final String value;

  static AuditLogConfigLogTypeGameservicesV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeGameservicesV1beta value: $value',
    );
  }
}
