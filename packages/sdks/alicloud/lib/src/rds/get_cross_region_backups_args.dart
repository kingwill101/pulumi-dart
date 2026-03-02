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
    this.backupId,
    this.crossBackupId,
    this.crossBackupRegion,
    required this.dbInstanceId,
    this.endTime,
    this.ids,
    this.outputFile,
    this.resourceGroupId,
    this.startTime,
  });

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
      backupId: map['backupId'] == null ? null : (map['backupId']! as String).input(),
      crossBackupId: map['crossBackupId'] == null ? null : (map['crossBackupId']! as String).input(),
      crossBackupRegion: map['crossBackupRegion'] == null ? null : (map['crossBackupRegion']! as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

