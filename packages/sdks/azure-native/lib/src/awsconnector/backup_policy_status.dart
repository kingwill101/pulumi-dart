/// Set the backup policy status for the file system.  +   *ENABLED* - Turns automatic backups on for the file system.   +   *DISABLED* - Turns automatic backups off for the file system.
enum BackupPolicyStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const BackupPolicyStatus(this.value);
  final String value;

  static BackupPolicyStatus fromValue(String value) {
    for (final item in BackupPolicyStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupPolicyStatus value: $value');
  }
}

