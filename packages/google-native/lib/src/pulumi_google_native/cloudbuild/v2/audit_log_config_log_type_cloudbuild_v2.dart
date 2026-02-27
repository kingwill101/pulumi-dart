/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudbuildV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudbuildV2(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudbuildV2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudbuildV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeCloudbuildV2 value: $value');
  }
}
