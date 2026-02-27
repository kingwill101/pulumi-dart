/// The log type that this config enables.
enum AuditLogConfigLogTypeDeploymentmanagerAlpha {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeDeploymentmanagerAlpha(this.value);
  final String value;

  static AuditLogConfigLogTypeDeploymentmanagerAlpha fromValue(String value) {
    for (final item in AuditLogConfigLogTypeDeploymentmanagerAlpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeDeploymentmanagerAlpha value: $value');
  }
}
