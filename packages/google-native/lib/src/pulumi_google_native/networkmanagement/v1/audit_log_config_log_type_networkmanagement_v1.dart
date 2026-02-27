/// The log type that this config enables.
enum AuditLogConfigLogTypeNetworkmanagementV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeNetworkmanagementV1(this.value);
  final String value;

  static AuditLogConfigLogTypeNetworkmanagementV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeNetworkmanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeNetworkmanagementV1 value: $value');
  }
}
