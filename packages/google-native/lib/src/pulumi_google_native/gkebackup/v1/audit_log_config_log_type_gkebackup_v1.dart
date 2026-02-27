/// The log type that this config enables.
enum AuditLogConfigLogTypeGkebackupV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkebackupV1(this.value);
  final String value;

  static AuditLogConfigLogTypeGkebackupV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkebackupV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeGkebackupV1 value: $value');
  }
}
