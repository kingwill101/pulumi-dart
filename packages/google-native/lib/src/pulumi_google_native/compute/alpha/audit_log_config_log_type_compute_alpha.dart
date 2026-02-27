/// The log type that this config enables.
enum AuditLogConfigLogTypeComputeAlpha {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogTypeComputeAlpha(this.value);
  final String value;

  static AuditLogConfigLogTypeComputeAlpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeComputeAlpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeComputeAlpha value: $value');
  }
}
