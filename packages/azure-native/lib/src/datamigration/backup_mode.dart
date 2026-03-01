/// Backup Mode to specify whether to use existing backup or create new backup.
enum BackupMode {
  valueCreateBackup("CreateBackup"),
  valueExistingBackup("ExistingBackup");

  const BackupMode(this.value);
  final String value;

  static BackupMode fromValue(String value) {
    for (final item in BackupMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupMode value: $value');
  }
}

