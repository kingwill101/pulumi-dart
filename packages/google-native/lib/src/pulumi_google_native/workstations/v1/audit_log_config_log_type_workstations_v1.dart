/// The log type that this config enables.
enum AuditLogConfigLogTypeWorkstationsV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeWorkstationsV1(this.value);
  final String value;

  static AuditLogConfigLogTypeWorkstationsV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeWorkstationsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeWorkstationsV1 value: $value');
  }
}
