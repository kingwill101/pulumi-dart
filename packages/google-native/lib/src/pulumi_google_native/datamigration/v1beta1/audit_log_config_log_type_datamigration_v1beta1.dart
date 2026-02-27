/// The log type that this config enables.
enum AuditLogConfigLogTypeDatamigrationV1beta1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDatamigrationV1beta1(this.value);
  final String value;

  static AuditLogConfigLogTypeDatamigrationV1beta1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeDatamigrationV1beta1 value: $value');
  }
}
