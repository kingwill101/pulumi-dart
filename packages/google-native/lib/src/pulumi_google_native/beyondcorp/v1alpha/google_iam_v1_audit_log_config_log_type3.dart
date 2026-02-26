/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogType3 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogType3(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogType3 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleIamV1AuditLogConfigLogType3 value: $value');
  }
}
