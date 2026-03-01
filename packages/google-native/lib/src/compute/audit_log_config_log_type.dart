/// The log type that this config enables.
enum AuditLogConfigLogType {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogType(this.value);
  final String value;

  static AuditLogConfigLogType fromValue(String value) {
    for (final item in AuditLogConfigLogType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogType value: $value');
  }
}
