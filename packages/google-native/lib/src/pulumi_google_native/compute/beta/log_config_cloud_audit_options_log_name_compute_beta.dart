/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogNameComputeBeta {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogNameComputeBeta(this.value);
  final String value;

  static LogConfigCloudAuditOptionsLogNameComputeBeta fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogNameComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigCloudAuditOptionsLogNameComputeBeta value: $value');
  }
}
