/// Type of backup management for the backed up item.
enum BackupManagementType {
  valueInvalid("Invalid"),
  valueAzureIaasVM("AzureIaasVM"),
  valueMAB("MAB"),
  valueDPM("DPM"),
  valueAzureBackupServer("AzureBackupServer"),
  valueAzureSql("AzureSql"),
  valueAzureStorage("AzureStorage"),
  valueAzureWorkload("AzureWorkload"),
  valueDefaultBackup("DefaultBackup");

  const BackupManagementType(this.value);
  final String value;

  static BackupManagementType fromValue(String value) {
    for (final item in BackupManagementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupManagementType value: $value');
  }
}

