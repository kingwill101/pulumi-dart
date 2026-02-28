/// This is deprecated and has no effect. Do not use.
enum LogConfigCloudAuditOptionsLogNameComputeV1 {
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS"),
  unspecifiedLogName("UNSPECIFIED_LOG_NAME");

  const LogConfigCloudAuditOptionsLogNameComputeV1(this.value);
  final String value;

  static LogConfigCloudAuditOptionsLogNameComputeV1 fromValue(String value) {
    for (final item in LogConfigCloudAuditOptionsLogNameComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigCloudAuditOptionsLogNameComputeV1 value: $value');
  }
}
