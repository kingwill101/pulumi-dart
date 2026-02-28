/// The log type that this config enables.
enum ApigatewayAuditLogConfigLogTypeApigatewayV1beta {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  dataWrite("DATA_WRITE"),
  dataRead("DATA_READ");

  const ApigatewayAuditLogConfigLogTypeApigatewayV1beta(this.value);
  final String value;

  static ApigatewayAuditLogConfigLogTypeApigatewayV1beta fromValue(String value) {
    for (final item in ApigatewayAuditLogConfigLogTypeApigatewayV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApigatewayAuditLogConfigLogTypeApigatewayV1beta value: $value');
  }
}

