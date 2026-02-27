/// The log type that this config enables.
enum AuditLogConfigLogTypeGkehubV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkehubV1(this.value);
  final String value;

  static AuditLogConfigLogTypeGkehubV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkehubV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeGkehubV1 value: $value');
  }
}
