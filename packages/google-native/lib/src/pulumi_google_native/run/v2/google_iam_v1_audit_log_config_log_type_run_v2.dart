/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogTypeRunV2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogTypeRunV2(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogTypeRunV2 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogTypeRunV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleIamV1AuditLogConfigLogTypeRunV2 value: $value');
  }
}
