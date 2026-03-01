/// Property value
enum ContinuousBackupsStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const ContinuousBackupsStatus(this.value);
  final String value;

  static ContinuousBackupsStatus fromValue(String value) {
    for (final item in ContinuousBackupsStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContinuousBackupsStatus value: $value');
  }
}

