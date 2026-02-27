/// The log type that this config enables.
enum AuditLogConfigLogTypeBigtableadminV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeBigtableadminV2(this.value);
  final String value;

  static AuditLogConfigLogTypeBigtableadminV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeBigtableadminV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeBigtableadminV2 value: $value');
  }
}
