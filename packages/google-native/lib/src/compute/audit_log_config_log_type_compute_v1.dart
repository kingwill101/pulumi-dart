/// The log type that this config enables.
enum AuditLogConfigLogTypeComputeV1 {
  adminRead("ADMIN_READ"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED");

  const AuditLogConfigLogTypeComputeV1(this.value);
  final String value;

  static AuditLogConfigLogTypeComputeV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuditLogConfigLogTypeComputeV1 value: $value');
  }
}
