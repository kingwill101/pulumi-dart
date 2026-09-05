// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backups_backup_summary.dart';

/// Result data returned by getBackups.
class GetBackupsResult {
  /// List of backups. See below.
  final List<GetBackupsBackupSummary>? backupSummaries;
  /// BackupType: `USER`, `SYSTEM`, `AWS_BACKUP`.
  final String? backupType;
  final String? region;
  /// Name of the table.
  final String? tableName;
  final String? timeRangeLowerBound;
  final String? timeRangeUpperBound;

  /// Creates a new [GetBackupsResult].
  /// [backupSummaries] List of backups. See below.
  /// [backupType] BackupType: `USER`, `SYSTEM`, `AWS_BACKUP`.
  /// [region] Optional.
  /// [tableName] Name of the table.
  /// [timeRangeLowerBound] Optional.
  /// [timeRangeUpperBound] Optional.
  const GetBackupsResult({
    this.backupSummaries,
    this.backupType,
    this.region,
    this.tableName,
    this.timeRangeLowerBound,
    this.timeRangeUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSummaries': ?(() { final guardedValue = backupSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBackupsBackupSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backupType': ?backupType,
      'region': ?region,
      'tableName': ?tableName,
      'timeRangeLowerBound': ?timeRangeLowerBound,
      'timeRangeUpperBound': ?timeRangeUpperBound,
    };
  }

  factory GetBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetBackupsResult(
      backupSummaries: (() { final guardedValue = map['backupSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBackupsBackupSummary>(guardedValue, (value) => GetBackupsBackupSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeRangeLowerBound: (() { final guardedValue = map['timeRangeLowerBound']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeRangeUpperBound: (() { final guardedValue = map['timeRangeUpperBound']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
