/// The partner sync mode of the SQL managed instance.
enum FailoverGroupPartnerSyncMode {
  valueAsync("async"),
  valueSync("sync");

  const FailoverGroupPartnerSyncMode(this.wireValue);
  final String wireValue;

  static FailoverGroupPartnerSyncMode fromValue(String value) {
    for (final item in FailoverGroupPartnerSyncMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverGroupPartnerSyncMode value: $value');
  }
}

