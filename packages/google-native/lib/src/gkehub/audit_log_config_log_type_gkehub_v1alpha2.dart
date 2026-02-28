/// The log type that this config enables.
enum AuditLogConfigLogTypeGkehubV1alpha2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeGkehubV1alpha2(this.value);
  final String value;

  static AuditLogConfigLogTypeGkehubV1alpha2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeGkehubV1alpha2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeGkehubV1alpha2 value: $value');
  }
}

