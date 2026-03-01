/// The log type that this config enables.
enum AuditLogConfigLogTypeDeploymentmanagerV2beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDeploymentmanagerV2beta(this.value);
  final String value;

  static AuditLogConfigLogTypeDeploymentmanagerV2beta fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDeploymentmanagerV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuditLogConfigLogTypeDeploymentmanagerV2beta value: $value',
    );
  }
}
