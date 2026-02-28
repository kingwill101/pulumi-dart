// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting {
  /// Number of backups to retain.
  final int retainedBackups;

  /// The unit that 'retainedBackups' represents. Defaults to COUNT
  final String retentionUnit;

  /// Creates a new [GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting].
  /// [retainedBackups] Number of backups to retain.
  /// [retentionUnit] The unit that 'retainedBackups' represents. Defaults to COUNT
  GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting({
    required this.retainedBackups,
    required this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retainedBackups'] = retainedBackups;
    map['retentionUnit'] = retentionUnit;
    return map;
  }

  factory GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting(
      retainedBackups: map['retainedBackups'] as int,
      retentionUnit: map['retentionUnit'] as String,
    );
  }
}
