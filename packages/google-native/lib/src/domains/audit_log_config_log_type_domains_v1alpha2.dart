/// The log type that this config enables.
enum AuditLogConfigLogTypeDomainsV1alpha2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDomainsV1alpha2(this.value);
  final String value;

  static AuditLogConfigLogTypeDomainsV1alpha2 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDomainsV1alpha2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeDomainsV1alpha2 value: $value');
  }
}

