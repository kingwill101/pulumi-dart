/// Property value
enum PointInTimeRecoveryStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const PointInTimeRecoveryStatus(this.wireValue);
  final String wireValue;

  static PointInTimeRecoveryStatus fromValue(String value) {
    for (final item in PointInTimeRecoveryStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PointInTimeRecoveryStatus value: $value');
  }
}
