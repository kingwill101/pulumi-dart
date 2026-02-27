/// The log type that this config enables.
enum AuditLogConfigLogTypeIdsV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeIdsV1(this.value);
  final String value;

  static AuditLogConfigLogTypeIdsV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeIdsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeIdsV1 value: $value');
  }
}
