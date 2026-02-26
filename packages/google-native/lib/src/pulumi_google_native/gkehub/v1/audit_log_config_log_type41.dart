/// The log type that this config enables.
enum AuditLogConfigLogType41 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogType41(this.value);
  final String value;

  static AuditLogConfigLogType41 fromValue(String value) {
    for (final item in AuditLogConfigLogType41.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType41 value: $value');
  }
}
