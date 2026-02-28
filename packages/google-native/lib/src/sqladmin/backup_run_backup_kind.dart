/// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
enum BackupRunBackupKind {
  sqlBackupKindUnspecified("SQL_BACKUP_KIND_UNSPECIFIED"),
  snapshot("SNAPSHOT"),
  physical("PHYSICAL");

  const BackupRunBackupKind(this.value);
  final String value;

  static BackupRunBackupKind fromValue(String value) {
    for (final item in BackupRunBackupKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunBackupKind value: $value');
  }
}

