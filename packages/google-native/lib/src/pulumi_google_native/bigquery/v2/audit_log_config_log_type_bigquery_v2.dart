/// The log type that this config enables.
enum AuditLogConfigLogTypeBigqueryV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeBigqueryV2(this.value);
  final String value;

  static AuditLogConfigLogTypeBigqueryV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeBigqueryV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeBigqueryV2 value: $value');
  }
}
