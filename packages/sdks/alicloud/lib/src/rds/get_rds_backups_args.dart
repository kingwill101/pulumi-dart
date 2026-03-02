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
      backupMode: map['backupMode'] == null ? null : (map['backupMode']! as String).input(),
      backupStatus: map['backupStatus'] == null ? null : (map['backupStatus']! as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

