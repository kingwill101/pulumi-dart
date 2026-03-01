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
    pulumi.Output<String>? backupMode,
    pulumi.Output<String>? backupStatus,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? endTime,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? startTime,
  }) :
      backupMode = pulumi.Input.asOptionalInput<String>(backupMode),
      backupStatus = pulumi.Input.asOptionalInput<String>(backupStatus),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

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
      backupMode: map['backupMode'] == null ? null : pulumi.Output.create<String>(map['backupMode'] as String),
      backupStatus: map['backupStatus'] == null ? null : pulumi.Output.create<String>(map['backupStatus'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

