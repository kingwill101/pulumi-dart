// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_database_instances_instance_setting_backup_configuration_backup_retention_setting/get_database_instances_instance_setting_backup_configuration_backup_retention_setting.dart';

class GetDatabaseInstancesInstanceSettingBackupConfiguration {
  final List<
          GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting>
      backupRetentionSettings;

  /// Backup tier that manages the backups for the instance.
  final String backupTier;

  /// True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL.
  final bool binaryLogEnabled;

  /// True if backup configuration is enabled.
  final bool enabled;

  /// Location of the backup configuration.
  final String location;

  /// True if Point-in-time recovery is enabled.
  final bool pointInTimeRecoveryEnabled;

  /// HH:MM format time indicating when backup configuration starts.
  final String startTime;

  /// The number of days of transaction logs we retain for point in time restore, from 1-7. (For PostgreSQL Enterprise Plus instances, from 1 to 35.)
  final int transactionLogRetentionDays;

  GetDatabaseInstancesInstanceSettingBackupConfiguration({
    required this.backupRetentionSettings,
    required this.backupTier,
    required this.binaryLogEnabled,
    required this.enabled,
    required this.location,
    required this.pointInTimeRecoveryEnabled,
    required this.startTime,
    required this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupRetentionSettings'] = pulumi.Input.encodeList<
        GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting,
        Map<String,
            dynamic>>(backupRetentionSettings, (value) => value.toMap());
    map['backupTier'] = backupTier;
    map['binaryLogEnabled'] = binaryLogEnabled;
    map['enabled'] = enabled;
    map['location'] = location;
    map['pointInTimeRecoveryEnabled'] = pointInTimeRecoveryEnabled;
    map['startTime'] = startTime;
    map['transactionLogRetentionDays'] = transactionLogRetentionDays;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingBackupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingBackupConfiguration(
      backupRetentionSettings: pulumi.Input.decodeList<
              GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting>(
          map['backupRetentionSettings'],
          (value) =>
              GetDatabaseInstancesInstanceSettingBackupConfigurationBackupRetentionSetting
                  .fromMap((value as Map).cast<String, dynamic>())),
      backupTier: map['backupTier'] as String,
      binaryLogEnabled: map['binaryLogEnabled'] as bool,
      enabled: map['enabled'] as bool,
      location: map['location'] as String,
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] as bool,
      startTime: map['startTime'] as String,
      transactionLogRetentionDays: map['transactionLogRetentionDays'] as int,
    );
  }
}
