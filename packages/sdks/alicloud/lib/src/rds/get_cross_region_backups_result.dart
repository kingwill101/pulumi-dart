// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cross_region_backups_backup.dart';

/// Result data returned by getCrossRegionBackups.
class GetCrossRegionBackupsResult {
  final String? backupId;
  final List<GetCrossRegionBackupsBackup> backups;
  final String? crossBackupId;
  final String? crossBackupRegion;
  final String dbInstanceId;
  final String? endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? resourceGroupId;
  final String? startTime;

  /// Creates a new [GetCrossRegionBackupsResult].
  /// [backupId] Optional.
  /// [backups] Required.
  /// [crossBackupId] Optional.
  /// [crossBackupRegion] Optional.
  /// [dbInstanceId] Required.
  /// [endTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [startTime] Optional.
  GetCrossRegionBackupsResult({
    this.backupId,
    required this.backups,
    this.crossBackupId,
    this.crossBackupRegion,
    required this.dbInstanceId,
    this.endTime,
    required this.id,
    required this.ids,
    this.outputFile,
    this.resourceGroupId,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backups': pulumi.Input.encodeList<GetCrossRegionBackupsBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'crossBackupId': ?crossBackupId,
      'crossBackupRegion': ?crossBackupRegion,
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'startTime': ?startTime,
    };
  }

  factory GetCrossRegionBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionBackupsResult(
      backupId: map['backupId'] == null ? null : map['backupId']! as String,
      backups: pulumi.Input.decodeList<GetCrossRegionBackupsBackup>(map['backups'], (value) => GetCrossRegionBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      crossBackupId: map['crossBackupId'] == null ? null : map['crossBackupId']! as String,
      crossBackupRegion: map['crossBackupRegion'] == null ? null : map['crossBackupRegion']! as String,
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: map['endTime'] == null ? null : map['endTime']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      startTime: map['startTime'] == null ? null : map['startTime']! as String,
    );
  }
}

