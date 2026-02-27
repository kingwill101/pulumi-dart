/// The log type that this config enables.
enum AuditLogConfigLogTypeMetastoreV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeMetastoreV1(this.value);
  final String value;

  static AuditLogConfigLogTypeMetastoreV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeMetastoreV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeMetastoreV1 value: $value');
  }
}
