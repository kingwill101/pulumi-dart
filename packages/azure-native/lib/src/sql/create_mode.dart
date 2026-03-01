/// Specifies the mode of database creation.
///
/// Default: regular database creation.
///
/// Copy: creates a database as a copy of an existing database. sourceDatabaseId must be specified as the resource ID of the source database.
///
/// Secondary: creates a database as a secondary replica of an existing database. sourceDatabaseId must be specified as the resource ID of the existing primary database.
///
/// PointInTimeRestore: Creates a database by restoring a point in time backup of an existing database. sourceDatabaseId must be specified as the resource ID of the existing database, and restorePointInTime must be specified.
///
/// Recovery: Creates a database by restoring a geo-replicated backup. sourceDatabaseId must be specified as the recoverable database resource ID to restore.
///
/// Restore: Creates a database by restoring a backup of a deleted database. sourceDatabaseId must be specified. If sourceDatabaseId is the database's original resource ID, then sourceDatabaseDeletionDate must be specified. Otherwise sourceDatabaseId must be the restorable dropped database resource ID and sourceDatabaseDeletionDate is ignored. restorePointInTime may also be specified to restore from an earlier point in time.
///
/// RestoreLongTermRetentionBackup: Creates a database by restoring from a long term retention vault. recoveryServicesRecoveryPointResourceId must be specified as the recovery point resource ID.
///
/// Copy, Secondary, and RestoreLongTermRetentionBackup are not supported for DataWarehouse edition.
enum CreateMode {
  valueDefault("Default"),
  valueCopy("Copy"),
  valueSecondary("Secondary"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueRestore("Restore"),
  valueRecovery("Recovery"),
  valueRestoreExternalBackup("RestoreExternalBackup"),
  valueRestoreExternalBackupSecondary("RestoreExternalBackupSecondary"),
  valueRestoreLongTermRetentionBackup("RestoreLongTermRetentionBackup"),
  valueOnlineSecondary("OnlineSecondary");

  const CreateMode(this.value);
  final String value;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}

