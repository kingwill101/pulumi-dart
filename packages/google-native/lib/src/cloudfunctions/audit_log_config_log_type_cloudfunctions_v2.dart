/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudfunctionsV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudfunctionsV2(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudfunctionsV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudfunctionsV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeCloudfunctionsV2 value: $value',
    );
  }
}
