/// The log type that this config enables.
enum GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1alpha {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1alpha(this.value);
  final String value;

  static GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1alpha fromValue(
    String value,
  ) {
    for (final item
        in GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleIamV1AuditLogConfigLogTypeBeyondcorpV1alpha value: $value',
    );
  }
}
