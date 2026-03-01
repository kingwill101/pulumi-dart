/// Mode used to perform the migration: Online or Offline.
enum MigrationMode {
  offline("Offline"),
  online("Online");

  const MigrationMode(this.value);
  final String value;

  static MigrationMode fromValue(String value) {
    for (final item in MigrationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationMode value: $value');
  }
}

