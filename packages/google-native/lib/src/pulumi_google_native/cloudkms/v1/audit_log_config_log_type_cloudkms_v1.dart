/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudkmsV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudkmsV1(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudkmsV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeCloudkmsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeCloudkmsV1 value: $value');
  }
}
