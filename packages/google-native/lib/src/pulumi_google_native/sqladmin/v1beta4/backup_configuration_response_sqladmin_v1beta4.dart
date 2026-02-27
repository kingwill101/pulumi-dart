// ignore_for_file: unused_element, unnecessary_cast

import 'backup_retention_settings_response_sqladmin_v1beta4.dart';

/// Database instance backup configuration.
class BackupConfigurationResponseSqladminV1beta4 {
  /// Backup retention settings.
  final BackupRetentionSettingsResponseSqladminV1beta4 backupRetentionSettings;

  /// (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  final bool binaryLogEnabled;

  /// Whether this configuration is enabled.
  final bool enabled;

  /// This is always `sql#backupConfiguration`.
  final String kind;

  /// Location of the backup
  final String location;

  /// Whether point in time recovery is enabled.
  final bool pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  final bool replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  final String startTime;

  /// The number of days of transaction logs we retain for point in time restore, from 1-7.
  final int transactionLogRetentionDays;

  BackupConfigurationResponseSqladminV1beta4({
    required this.backupRetentionSettings,
    required this.binaryLogEnabled,
    required this.enabled,
    required this.kind,
    required this.location,
    required this.pointInTimeRecoveryEnabled,
    required this.replicationLogArchivingEnabled,
    required this.startTime,
    required this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupRetentionSettings'] = backupRetentionSettings.toMap();
    map['binaryLogEnabled'] = binaryLogEnabled;
    map['enabled'] = enabled;
    map['kind'] = kind;
    map['location'] = location;
    map['pointInTimeRecoveryEnabled'] = pointInTimeRecoveryEnabled;
    map['replicationLogArchivingEnabled'] = replicationLogArchivingEnabled;
    map['startTime'] = startTime;
    map['transactionLogRetentionDays'] = transactionLogRetentionDays;
    return map;
  }

  factory BackupConfigurationResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return BackupConfigurationResponseSqladminV1beta4(
      backupRetentionSettings:
          BackupRetentionSettingsResponseSqladminV1beta4.fromMap(
              (map['backupRetentionSettings'] as Map).cast<String, dynamic>()),
      binaryLogEnabled: map['binaryLogEnabled'] as bool,
      enabled: map['enabled'] as bool,
      kind: map['kind'] as String,
      location: map['location'] as String,
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] as bool,
      replicationLogArchivingEnabled:
          map['replicationLogArchivingEnabled'] as bool,
      startTime: map['startTime'] as String,
      transactionLogRetentionDays: map['transactionLogRetentionDays'] as int,
    );
  }
}
