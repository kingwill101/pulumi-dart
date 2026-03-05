/// Database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. sourceDatabaseId and restorePointInTime must be specified.
enum DatabaseCreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const DatabaseCreateMode(this.wireValue);
  final String wireValue;

  static DatabaseCreateMode fromValue(String value) {
    for (final item in DatabaseCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseCreateMode value: $value');
  }
}

