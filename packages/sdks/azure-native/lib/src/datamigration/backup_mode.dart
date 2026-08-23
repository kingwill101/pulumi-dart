/// Backup Mode to specify whether to use existing backup or create new backup.
enum BackupMode {
  valueCreateBackup("CreateBackup"),
  valueExistingBackup("ExistingBackup");

  const BackupMode(this.wireValue);
  final String wireValue;

  static BackupMode fromValue(String value) {
    for (final item in BackupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupMode value: $value');
  }
}
