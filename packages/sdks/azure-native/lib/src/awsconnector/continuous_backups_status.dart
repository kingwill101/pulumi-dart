/// Property value
enum ContinuousBackupsStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const ContinuousBackupsStatus(this.wireValue);
  final String wireValue;

  static ContinuousBackupsStatus fromValue(String value) {
    for (final item in ContinuousBackupsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContinuousBackupsStatus value: $value');
  }
}

