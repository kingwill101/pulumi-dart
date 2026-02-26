/// The status of this run.
enum BackupRunStatus2 {
  sqlBackupRunStatusUnspecified("SQL_BACKUP_RUN_STATUS_UNSPECIFIED"),
  enqueued("ENQUEUED"),
  overdue("OVERDUE"),
  running("RUNNING"),
  failed("FAILED"),
  successful("SUCCESSFUL"),
  skipped("SKIPPED"),
  deletionPending("DELETION_PENDING"),
  deletionFailed("DELETION_FAILED"),
  deleted("DELETED");

  const BackupRunStatus2(this.value);
  final String value;

  static BackupRunStatus2 fromValue(String value) {
    for (final item in BackupRunStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupRunStatus2 value: $value');
  }
}
