// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingFinalBackupConfig {
  /// When this parameter is set to true, the final backup is enabled for the instance
  final bool enabled;

  /// The number of days to retain the final backup after the instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years. The final backup will be purged at (time_of_instance_deletion + retention_days).
  final int retentionDays;

  GetDatabaseInstancesInstanceSettingFinalBackupConfig({
    required this.enabled,
    required this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['retentionDays'] = retentionDays;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingFinalBackupConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingFinalBackupConfig(
      enabled: map['enabled'] as bool,
      retentionDays: map['retentionDays'] as int,
    );
  }
}
