/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudfunctionsV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudfunctionsV1(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudfunctionsV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudfunctionsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeCloudfunctionsV1 value: $value');
  }
}
