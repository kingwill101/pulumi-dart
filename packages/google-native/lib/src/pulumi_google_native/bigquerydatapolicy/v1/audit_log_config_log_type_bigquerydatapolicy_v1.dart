/// The log type that this config enables.
enum AuditLogConfigLogTypeBigquerydatapolicyV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeBigquerydatapolicyV1(this.value);
  final String value;

  static AuditLogConfigLogTypeBigquerydatapolicyV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeBigquerydatapolicyV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeBigquerydatapolicyV1 value: $value');
  }
}
