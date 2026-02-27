/// The log type that this config enables.
enum AuditLogConfigLogTypeDatamigrationV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDatamigrationV1(this.value);
  final String value;

  static AuditLogConfigLogTypeDatamigrationV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDatamigrationV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeDatamigrationV1 value: $value');
  }
}
