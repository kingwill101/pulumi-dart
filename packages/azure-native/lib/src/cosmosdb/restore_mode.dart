/// Describes the mode of the restore.
enum RestoreMode {
  valuePointInTime("PointInTime");

  const RestoreMode(this.value);
  final String value;

  static RestoreMode fromValue(String value) {
    for (final item in RestoreMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestoreMode value: $value');
  }
}

