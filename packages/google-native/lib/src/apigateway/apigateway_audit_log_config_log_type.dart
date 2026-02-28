/// The log type that this config enables.
enum ApigatewayAuditLogConfigLogType {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const ApigatewayAuditLogConfigLogType(this.value);
  final String value;

  static ApigatewayAuditLogConfigLogType fromValue(String value) {
    for (final item in ApigatewayAuditLogConfigLogType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ApigatewayAuditLogConfigLogType value: $value');
  }
}
