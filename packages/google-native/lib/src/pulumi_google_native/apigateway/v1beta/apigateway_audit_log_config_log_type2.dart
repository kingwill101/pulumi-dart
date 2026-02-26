/// The log type that this config enables.
enum ApigatewayAuditLogConfigLogType2 {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const ApigatewayAuditLogConfigLogType2(this.value);
  final String value;

  static ApigatewayAuditLogConfigLogType2 fromValue(String value) {
    for (final item in ApigatewayAuditLogConfigLogType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ApigatewayAuditLogConfigLogType2 value: $value');
  }
}
