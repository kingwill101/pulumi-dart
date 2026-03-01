/// The log type that this config enables.
enum AuditLogConfigLogTypeGkehubV1alpha {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkehubV1alpha(this.value);
  final String value;

  static AuditLogConfigLogTypeGkehubV1alpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeGkehubV1alpha value: $value',
    );
  }
}
