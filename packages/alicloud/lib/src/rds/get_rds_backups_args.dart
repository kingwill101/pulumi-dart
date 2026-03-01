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
    String? backupMode,
    String? backupStatus,
    required String dbInstanceId,
    String? endTime,
    List<String>? ids,
    String? outputFile,
    String? startTime,
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
      backupMode: map['backupMode'] == null ? null : map['backupMode'] as String,
      backupStatus: map['backupStatus'] == null ? null : map['backupStatus'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

