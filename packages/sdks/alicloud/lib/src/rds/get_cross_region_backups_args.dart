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
  /// &gt; **NOTE:** Note You must specify the `cross_backup_id` parameter. Alternatively, you must specify the `start_time` and `end_time` parameters.
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
  const GetCrossRegionBackupsArgs({
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
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossBackupId: (() { final guardedValue = map['crossBackupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossBackupRegion: (() { final guardedValue = map['crossBackupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

