// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_setting_backup_configuration_backup_retention_setting.dart';

class GetDatabaseInstanceSettingBackupConfiguration {
  final List<
    GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting
  >
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

  /// Creates a new [GetDatabaseInstanceSettingBackupConfiguration].
  /// [backupRetentionSettings] Required.
  /// [backupTier] Backup tier that manages the backups for the instance.
  /// [binaryLogEnabled] True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL.
  /// [enabled] True if backup configuration is enabled.
  /// [location] Location of the backup configuration.
  /// [pointInTimeRecoveryEnabled] True if Point-in-time recovery is enabled.
  /// [startTime] HH:MM format time indicating when backup configuration starts.
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7. (For PostgreSQL Enterprise Plus instances, from 1 to 35.)
  GetDatabaseInstanceSettingBackupConfiguration({
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
    return <String, dynamic>{
      'backupRetentionSettings':
          pulumi.Input.encodeList<
            GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting,
            Map<String, dynamic>
          >(backupRetentionSettings, (value) => value.toMap()),
      'backupTier': backupTier,
      'binaryLogEnabled': binaryLogEnabled,
      'enabled': enabled,
      'location': location,
      'pointInTimeRecoveryEnabled': pointInTimeRecoveryEnabled,
      'startTime': startTime,
      'transactionLogRetentionDays': transactionLogRetentionDays,
    };
  }

  factory GetDatabaseInstanceSettingBackupConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingBackupConfiguration(
      backupRetentionSettings:
          pulumi.Input.decodeList<
            GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting
          >(
            map['backupRetentionSettings'],
            (value) =>
                GetDatabaseInstanceSettingBackupConfigurationBackupRetentionSetting.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
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
