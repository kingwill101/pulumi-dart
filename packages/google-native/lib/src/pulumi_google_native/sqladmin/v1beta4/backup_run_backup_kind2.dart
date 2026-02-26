/// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
enum BackupRunBackupKind2 {
  sqlBackupKindUnspecified("SQL_BACKUP_KIND_UNSPECIFIED"),
  snapshot("SNAPSHOT"),
  physical("PHYSICAL");

  const BackupRunBackupKind2(this.value);
  final String value;

  static BackupRunBackupKind2 fromValue(String value) {
    for (final item in BackupRunBackupKind2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunBackupKind2 value: $value');
  }
}
