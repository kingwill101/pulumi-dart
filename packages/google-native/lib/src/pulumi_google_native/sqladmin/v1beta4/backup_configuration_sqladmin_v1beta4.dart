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
    final map = <String, dynamic>{};
    final backupRetentionSettingsValue = backupRetentionSettings;
    if (backupRetentionSettingsValue != null) {
      map['backupRetentionSettings'] = backupRetentionSettingsValue.toMap();
    }
    final binaryLogEnabledValue = binaryLogEnabled;
    if (binaryLogEnabledValue != null) {
      map['binaryLogEnabled'] = binaryLogEnabledValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final pointInTimeRecoveryEnabledValue = pointInTimeRecoveryEnabled;
    if (pointInTimeRecoveryEnabledValue != null) {
      map['pointInTimeRecoveryEnabled'] = pointInTimeRecoveryEnabledValue;
    }
    final replicationLogArchivingEnabledValue = replicationLogArchivingEnabled;
    if (replicationLogArchivingEnabledValue != null) {
      map['replicationLogArchivingEnabled'] =
          replicationLogArchivingEnabledValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final transactionLogRetentionDaysValue = transactionLogRetentionDays;
    if (transactionLogRetentionDaysValue != null) {
      map['transactionLogRetentionDays'] = transactionLogRetentionDaysValue;
    }
    return map;
  }

  factory BackupConfigurationSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationSqladminV1beta4(
      backupRetentionSettings: map['backupRetentionSettings'] == null
          ? null
          : BackupRetentionSettingsSqladminV1beta4.fromMap(
              (map['backupRetentionSettings'] as Map).cast<String, dynamic>()),
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
