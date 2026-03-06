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
  const GetCrossRegionBackupsResult({
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
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: pulumi.Input.decodeList<GetCrossRegionBackupsBackup>(map['backups']!, (value) => GetCrossRegionBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      crossBackupId: (() { final guardedValue = map['crossBackupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      crossBackupRegion: (() { final guardedValue = map['crossBackupRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

