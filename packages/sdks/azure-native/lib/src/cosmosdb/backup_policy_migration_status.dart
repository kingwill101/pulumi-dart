/// Describes the status of migration between backup policy types.
enum BackupPolicyMigrationStatus {
  valueInvalid("Invalid"),
  valueInProgress("InProgress"),
  valueCompleted("Completed"),
  valueFailed("Failed");

  const BackupPolicyMigrationStatus(this.value);
  final String value;

  static BackupPolicyMigrationStatus fromValue(String value) {
    for (final item in BackupPolicyMigrationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupPolicyMigrationStatus value: $value');
  }
}

