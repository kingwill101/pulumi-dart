/// The log type that this config enables.
enum AuditLogConfigLogTypeSecretmanagerV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeSecretmanagerV1(this.value);
  final String value;

  static AuditLogConfigLogTypeSecretmanagerV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeSecretmanagerV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeSecretmanagerV1 value: $value');
  }
}
