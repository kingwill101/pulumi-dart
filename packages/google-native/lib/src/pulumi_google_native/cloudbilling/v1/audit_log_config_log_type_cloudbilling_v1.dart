/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudbillingV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudbillingV1(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudbillingV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudbillingV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeCloudbillingV1 value: $value');
  }
}
