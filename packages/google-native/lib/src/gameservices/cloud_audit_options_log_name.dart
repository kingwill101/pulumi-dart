/// The log_name to populate in the Cloud Audit Record.
enum CloudAuditOptionsLogName {
  unspecifiedLogName("UNSPECIFIED_LOG_NAME"),
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS");

  const CloudAuditOptionsLogName(this.value);
  final String value;

  static CloudAuditOptionsLogName fromValue(String value) {
    for (final item in CloudAuditOptionsLogName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudAuditOptionsLogName value: $value');
  }
}
