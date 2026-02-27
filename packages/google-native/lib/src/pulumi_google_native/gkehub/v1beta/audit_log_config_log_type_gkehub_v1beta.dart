/// The log type that this config enables.
enum AuditLogConfigLogTypeGkehubV1beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkehubV1beta(this.value);
  final String value;

  static AuditLogConfigLogTypeGkehubV1beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeGkehubV1beta value: $value');
  }
}
