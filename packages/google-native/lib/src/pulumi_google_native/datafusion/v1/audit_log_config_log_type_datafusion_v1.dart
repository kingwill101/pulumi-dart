/// The log type that this config enables.
enum AuditLogConfigLogTypeDatafusionV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDatafusionV1(this.value);
  final String value;

  static AuditLogConfigLogTypeDatafusionV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDatafusionV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeDatafusionV1 value: $value');
  }
}
