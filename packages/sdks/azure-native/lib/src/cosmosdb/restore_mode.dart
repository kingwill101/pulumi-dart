/// Describes the mode of the restore.
enum RestoreMode {
  valuePointInTime("PointInTime");

  const RestoreMode(this.wireValue);
  final String wireValue;

  static RestoreMode fromValue(String value) {
    for (final item in RestoreMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestoreMode value: $value');
  }
}
