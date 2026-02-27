/// The log type that this config enables.
enum AuditLogConfigLogTypeVmwareengineV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeVmwareengineV1(this.value);
  final String value;

  static AuditLogConfigLogTypeVmwareengineV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeVmwareengineV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeVmwareengineV1 value: $value');
  }
}
