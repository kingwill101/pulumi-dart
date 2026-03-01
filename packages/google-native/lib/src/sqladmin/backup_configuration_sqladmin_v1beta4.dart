// ignore_for_file: unused_element, unnecessary_cast

import 'backup_retention_settings_sqladmin_v1beta4.dart';

/// Database instance backup configuration.
class BackupConfigurationSqladminV1beta4 {
  /// Backup retention settings.
  final BackupRetentionSettingsSqladminV1beta4? backupRetentionSettings;

  /// (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  final bool? binaryLogEnabled;

  /// Whether this configuration is enabled.
  final bool? enabled;

  /// This is always `sql#backupConfiguration`.
  final String? kind;

  /// Location of the backup
  final String? location;

  /// Whether point in time recovery is enabled.
  final bool? pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  final bool? replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  final String? startTime;

  /// The number of days of transaction logs we retain for point in time restore, from 1-7.
  final int? transactionLogRetentionDays;

  /// Creates a new [BackupConfigurationSqladminV1beta4].
  /// [backupRetentionSettings] Backup retention settings.
  /// [binaryLogEnabled] (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  /// [enabled] Whether this configuration is enabled.
  /// [kind] This is always `sql#backupConfiguration`.
  /// [location] Location of the backup
  /// [pointInTimeRecoveryEnabled] Whether point in time recovery is enabled.
  /// [replicationLogArchivingEnabled] Reserved for future use.
  /// [startTime] Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7.
  BackupConfigurationSqladminV1beta4({
    this.backupRetentionSettings,
    this.binaryLogEnabled,
    this.enabled,
    this.kind,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.replicationLogArchivingEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionSettings': ?backupRetentionSettings == null
          ? null
          : backupRetentionSettings!.toMap(),
      'binaryLogEnabled': ?binaryLogEnabled,
      'enabled': ?enabled,
      'kind': ?kind,
      'location': ?location,
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
      'replicationLogArchivingEnabled': ?replicationLogArchivingEnabled,
      'startTime': ?startTime,
      'transactionLogRetentionDays': ?transactionLogRetentionDays,
    };
  }

  factory BackupConfigurationSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationSqladminV1beta4(
      backupRetentionSettings: map['backupRetentionSettings'] == null
          ? null
          : BackupRetentionSettingsSqladminV1beta4.fromMap(
              (map['backupRetentionSettings'] as Map).cast<String, dynamic>(),
            ),
      binaryLogEnabled: map['binaryLogEnabled'] == null
          ? null
          : map['binaryLogEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] == null
          ? null
          : map['pointInTimeRecoveryEnabled'] as bool,
      replicationLogArchivingEnabled:
          map['replicationLogArchivingEnabled'] == null
          ? null
          : map['replicationLogArchivingEnabled'] as bool,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      transactionLogRetentionDays: map['transactionLogRetentionDays'] == null
          ? null
          : map['transactionLogRetentionDays'] as int,
    );
  }
}
