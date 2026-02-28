/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudfunctionsV2alpha {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudfunctionsV2alpha(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudfunctionsV2alpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudfunctionsV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeCloudfunctionsV2alpha value: $value');
  }
}

