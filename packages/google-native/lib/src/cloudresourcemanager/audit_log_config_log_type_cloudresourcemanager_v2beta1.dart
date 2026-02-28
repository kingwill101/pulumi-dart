/// The log type that this config enables.
enum AuditLogConfigLogTypeCloudresourcemanagerV2beta1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeCloudresourcemanagerV2beta1(this.value);
  final String value;

  static AuditLogConfigLogTypeCloudresourcemanagerV2beta1 fromValue(
      String value) {
    for (final item
        in AuditLogConfigLogTypeCloudresourcemanagerV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeCloudresourcemanagerV2beta1 value: $value');
  }
}
