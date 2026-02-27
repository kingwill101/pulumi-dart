/// The log type that this config enables.
enum AuditLogConfigLogTypeDomainsV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDomainsV1(this.value);
  final String value;

  static AuditLogConfigLogTypeDomainsV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDomainsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeDomainsV1 value: $value');
  }
}
