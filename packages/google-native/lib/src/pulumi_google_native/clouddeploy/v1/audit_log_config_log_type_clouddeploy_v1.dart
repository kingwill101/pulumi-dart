/// The log type that this config enables.
enum AuditLogConfigLogTypeClouddeployV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeClouddeployV1(this.value);
  final String value;

  static AuditLogConfigLogTypeClouddeployV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeClouddeployV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeClouddeployV1 value: $value');
  }
}
