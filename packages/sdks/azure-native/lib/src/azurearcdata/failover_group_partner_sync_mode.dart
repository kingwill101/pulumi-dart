/// The partner sync mode of the SQL managed instance.
enum FailoverGroupPartnerSyncMode {
  valueAsync("async"),
  valueSync("sync");

  const FailoverGroupPartnerSyncMode(this.value);
  final String value;

  static FailoverGroupPartnerSyncMode fromValue(String value) {
    for (final item in FailoverGroupPartnerSyncMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverGroupPartnerSyncMode value: $value');
  }
}

