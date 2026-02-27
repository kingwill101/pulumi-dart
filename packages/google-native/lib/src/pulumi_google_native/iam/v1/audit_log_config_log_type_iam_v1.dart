/// The log type that this config enables.
enum AuditLogConfigLogTypeIamV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeIamV1(this.value);
  final String value;

  static AuditLogConfigLogTypeIamV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeIamV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeIamV1 value: $value');
  }
}
