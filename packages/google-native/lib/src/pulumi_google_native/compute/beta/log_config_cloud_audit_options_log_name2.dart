/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogName2 {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogName2(this.value);
  final String value;

  static LogConfigCloudAuditOptionsLogName2 fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogName2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigCloudAuditOptionsLogName2 value: $value');
  }
}
