/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogType11 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogType11(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogType11 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogType11.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleIamV1AuditLogConfigLogType11 value: $value');
  }
}
