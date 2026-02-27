/// The log type that this config enables.
enum AuditLogConfigLogTypeBackupdrV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeBackupdrV1(this.value);
  final String value;

  static AuditLogConfigLogTypeBackupdrV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeBackupdrV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeBackupdrV1 value: $value');
  }
}
