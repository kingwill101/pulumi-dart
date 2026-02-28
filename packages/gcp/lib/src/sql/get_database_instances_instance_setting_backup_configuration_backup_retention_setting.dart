// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting {
  /// Number of backups to retain.
  final int retainedBackups;

  /// The unit that 'retainedBackups' represents. Defaults to COUNT
  final String retentionUnit;

  /// Creates a new [GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting].
  /// [retainedBackups] Number of backups to retain.
  /// [retentionUnit] The unit that 'retainedBackups' represents. Defaults to COUNT
  GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting({
    required this.retainedBackups,
    required this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retainedBackups'] = retainedBackups;
    map['retentionUnit'] = retentionUnit;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting(
      retainedBackups: map['retainedBackups'] as int,
      retentionUnit: map['retentionUnit'] as String,
    );
  }
}
