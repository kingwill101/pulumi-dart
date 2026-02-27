/// The log type that this config enables.
enum AuditLogConfigLogTypeServicemanagementV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeServicemanagementV1(this.value);
  final String value;

  static AuditLogConfigLogTypeServicemanagementV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeServicemanagementV1 value: $value');
  }
}
