/// The log type that this config enables.
enum AuditLogConfigLogTypeSourcerepoV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeSourcerepoV1(this.value);
  final String value;

  static AuditLogConfigLogTypeSourcerepoV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeSourcerepoV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeSourcerepoV1 value: $value');
  }
}
