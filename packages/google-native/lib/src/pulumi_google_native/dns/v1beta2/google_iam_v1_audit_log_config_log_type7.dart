/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogType7 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogType7(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogType7 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogType7.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleIamV1AuditLogConfigLogType7 value: $value');
  }
}
