/// The log type that this config enables.
enum AuditLogConfigLogTypePrivatecaV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypePrivatecaV1(this.value);
  final String value;

  static AuditLogConfigLogTypePrivatecaV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypePrivatecaV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypePrivatecaV1 value: $value');
  }
}
