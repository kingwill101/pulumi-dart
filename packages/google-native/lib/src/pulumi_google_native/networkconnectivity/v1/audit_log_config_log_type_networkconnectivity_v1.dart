/// The log type that this config enables.
enum AuditLogConfigLogTypeNetworkconnectivityV1 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const AuditLogConfigLogTypeNetworkconnectivityV1(this.value);
  final String value;

  static AuditLogConfigLogTypeNetworkconnectivityV1 fromValue(String value) {
    for (final item in AuditLogConfigLogTypeNetworkconnectivityV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuditLogConfigLogTypeNetworkconnectivityV1 value: $value');
  }
}
