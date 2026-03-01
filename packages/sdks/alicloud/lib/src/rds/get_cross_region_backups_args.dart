// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_cross_region_backups_get_cross_region_backups_args_doc}
/// Arguments for getCrossRegionBackups.
/// {@endtemplate}
/// {@macro pulumi_rds_get_cross_region_backups_get_cross_region_backups_args_doc}
class GetCrossRegionBackupsArgs {
  /// The ID of the cross-region data backup file.
  final pulumi.Input<String>? backupId;
  /// The ID of the cross-region data backup file.
  final pulumi.Input<String>? crossBackupId;
  /// The ID of the destination region where the cross-region data backup file is stored.
  ///
  /// > **NOTE:** Note You must specify the `cross_backup_id` parameter. Alternatively, you must specify the `start_time` and `end_time` parameters.
  final pulumi.Input<String>? crossBackupRegion;
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The end of the time range to query. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? endTime;
  /// A list of Cross Region Backup IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The beginning of the time range to query. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetCrossRegionBackupsArgs].
  /// [backupId] The ID of the cross-region data backup file.
  /// [crossBackupId] The ID of the cross-region data backup file.
  /// [crossBackupRegion] The ID of the destination region where the cross-region data backup file is stored.
  /// [dbInstanceId] The db instance id.
  /// [endTime] The end of the time range to query. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [ids] A list of Cross Region Backup IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [startTime] The beginning of the time range to query. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  GetCrossRegionBackupsArgs({
    pulumi.Output<String>? backupId,
    pulumi.Output<String>? crossBackupId,
    pulumi.Output<String>? crossBackupRegion,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? endTime,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? startTime,
  }) :
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      crossBackupId = pulumi.Input.asOptionalInput<String>(crossBackupId),
      crossBackupRegion = pulumi.Input.asOptionalInput<String>(crossBackupRegion),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'crossBackupId': ?crossBackupId,
      'crossBackupRegion': ?crossBackupRegion,
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'startTime': ?startTime,
    };
  }

  factory GetCrossRegionBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionBackupsArgs(
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      crossBackupId: map['crossBackupId'] == null ? null : pulumi.Output.create<String>(map['crossBackupId'] as String),
      crossBackupRegion: map['crossBackupRegion'] == null ? null : pulumi.Output.create<String>(map['crossBackupRegion'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

