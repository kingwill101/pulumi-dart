/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogName3 {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogName3(this.value);
  final String value;

  static LogConfigCloudAuditOptionsLogName3 fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogName3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigCloudAuditOptionsLogName3 value: $value');
  }
}
