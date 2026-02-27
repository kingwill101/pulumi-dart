/// The log type that this config enables.
enum AuditLogConfigLogTypeEventarcV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeEventarcV1(this.value);
  final String value;

  static AuditLogConfigLogTypeEventarcV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeEventarcV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeEventarcV1 value: $value');
  }
}
