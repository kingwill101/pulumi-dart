/// Indicates if the server is configured to create geographically redundant backups.
enum GeographicallyRedundantBackup {
  enabled("Enabled"),
  disabled("Disabled");

  const GeographicallyRedundantBackup(this.value);
  final String value;

  static GeographicallyRedundantBackup fromValue(String value) {
    for (final item in GeographicallyRedundantBackup.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeographicallyRedundantBackup value: $value');
  }
}

