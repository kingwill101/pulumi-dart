/// The log_name to populate in the Cloud Audit Record.
enum CloudAuditOptionsLogName2 {
  unspecifiedLogName("UNSPECIFIED_LOG_NAME"),
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS");

  const CloudAuditOptionsLogName2(this.value);
  final String value;

  static CloudAuditOptionsLogName2 fromValue(String value) {
    for (final item in CloudAuditOptionsLogName2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudAuditOptionsLogName2 value: $value');
  }
}
