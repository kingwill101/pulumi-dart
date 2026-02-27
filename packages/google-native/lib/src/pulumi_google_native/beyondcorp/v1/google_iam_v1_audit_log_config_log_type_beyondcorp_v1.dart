/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1 fromValue(String value) {
    for (final item in GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1 value: $value');
  }
}
