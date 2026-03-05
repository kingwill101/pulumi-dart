/// Mode used to perform the migration: Online or Offline.
enum MigrationMode {
  offline("Offline"),
  online("Online");

  const MigrationMode(this.wireValue);
  final String wireValue;

  static MigrationMode fromValue(String value) {
    for (final item in MigrationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationMode value: $value');
  }
}

