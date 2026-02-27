/// The log type that this config enables.
enum AuditLogConfigLogTypeRunV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeRunV1(this.value);
  final String value;

  static AuditLogConfigLogTypeRunV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeRunV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeRunV1 value: $value');
  }
}
