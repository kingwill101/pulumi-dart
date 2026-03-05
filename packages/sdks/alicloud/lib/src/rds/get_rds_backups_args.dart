// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_rds_backups_get_rds_backups_args_doc}
/// Arguments for getRdsBackups.
/// {@endtemplate}
/// {@macro pulumi_rds_get_rds_backups_get_rds_backups_args_doc}
class GetRdsBackupsArgs {
  /// BackupMode. Valid values: `Automated` and `Manual`.
  final pulumi.Input<String>? backupMode;
  /// Backup task status. Valid values: `Automated` and `Manual`.
  final pulumi.Input<String>? backupStatus;
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The end time.
  final pulumi.Input<String>? endTime;
  /// A list of Backup IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The start time.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetRdsBackupsArgs].
  /// [backupMode] BackupMode. Valid values: `Automated` and `Manual`.
  /// [backupStatus] Backup task status. Valid values: `Automated` and `Manual`.
  /// [dbInstanceId] The db instance id.
  /// [endTime] The end time.
  /// [ids] A list of Backup IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [startTime] The start time.
  GetRdsBackupsArgs({
    this.backupMode,
    this.backupStatus,
    required this.dbInstanceId,
    this.endTime,
    this.ids,
    this.outputFile,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMode': ?backupMode,
      'backupStatus': ?backupStatus,
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'startTime': ?startTime,
    };
  }

  factory GetRdsBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsBackupsArgs(
      backupMode: (() { final guardedValue = map['backupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupStatus: (() { final guardedValue = map['backupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

