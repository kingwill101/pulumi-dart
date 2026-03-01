/// Property value
enum PointInTimeRecoveryStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const PointInTimeRecoveryStatus(this.value);
  final String value;

  static PointInTimeRecoveryStatus fromValue(String value) {
    for (final item in PointInTimeRecoveryStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PointInTimeRecoveryStatus value: $value');
  }
}

