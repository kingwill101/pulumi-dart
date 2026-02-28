// ignore_for_file: unused_element, unnecessary_cast

import 'database_instance_settings_backup_configuration_backup_retention_settings.dart';

class DatabaseInstanceSettingsBackupConfiguration {
  /// Backup retention settings. The configuration is detailed below.
  final DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings? backupRetentionSettings;
  /// The backup tier that manages the backups for the instance.
  final String? backupTier;
  /// True if binary logging is enabled.
  /// Can only be used with MySQL.
  final bool? binaryLogEnabled;
  /// True if backup configuration is enabled.
  final bool? enabled;
  /// The region where the backup will be stored
  final String? location;
  /// True if Point-in-time recovery is enabled. Will restart database if enabled after instance creation. Valid only for PostgreSQL and SQL Server instances. Enabled by default for PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances.
  final bool? pointInTimeRecoveryEnabled;
  /// `HH:MM` format time indicating when backup
  /// configuration starts.
  final String? startTime;
  /// The number of days of transaction logs we retain for point in time restore, from 1-7. For PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances, the number of days of retained transaction logs can be set from 1 to 35.
  final int? transactionLogRetentionDays;

  /// Creates a new [DatabaseInstanceSettingsBackupConfiguration].
  /// [backupRetentionSettings] Backup retention settings. The configuration is detailed below.
  /// [backupTier] The backup tier that manages the backups for the instance.
  /// [binaryLogEnabled] True if binary logging is enabled.
  /// [enabled] True if backup configuration is enabled.
  /// [location] The region where the backup will be stored
  /// [pointInTimeRecoveryEnabled] True if Point-in-time recovery is enabled. Will restart database if enabled after instance creation. Valid only for PostgreSQL and SQL Server instances. Enabled by default for PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances.
  /// [startTime] `HH:MM` format time indicating when backup
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7. For PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances, the number of days of retained transaction logs can be set from 1 to 35.
  DatabaseInstanceSettingsBackupConfiguration({
    this.backupRetentionSettings,
    this.backupTier,
    this.binaryLogEnabled,
    this.enabled,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionSettings': ?backupRetentionSettings == null ? null : backupRetentionSettings!.toMap(),
      'backupTier': ?backupTier,
      'binaryLogEnabled': ?binaryLogEnabled,
      'enabled': ?enabled,
      'location': ?location,
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
      'startTime': ?startTime,
      'transactionLogRetentionDays': ?transactionLogRetentionDays,
    };
  }

  factory DatabaseInstanceSettingsBackupConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsBackupConfiguration(
      backupRetentionSettings: map['backupRetentionSettings'] == null ? null : DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings.fromMap((map['backupRetentionSettings'] as Map).cast<String, dynamic>()),
      backupTier: map['backupTier'] == null ? null : map['backupTier'] as String,
      binaryLogEnabled: map['binaryLogEnabled'] == null ? null : map['binaryLogEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] == null ? null : map['pointInTimeRecoveryEnabled'] as bool,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      transactionLogRetentionDays: map['transactionLogRetentionDays'] == null ? null : map['transactionLogRetentionDays'] as int,
    );
  }
}

