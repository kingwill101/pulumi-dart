// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rds_backups_backup.dart';

/// Result data returned by getRdsBackups.
class GetRdsBackupsResult {
  final String? backupMode;
  final String? backupStatus;
  final List<GetRdsBackupsBackup> backups;
  final String dbInstanceId;
  final String? endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? startTime;

  /// Creates a new [GetRdsBackupsResult].
  /// [backupMode] Optional.
  /// [backupStatus] Optional.
  /// [backups] Required.
  /// [dbInstanceId] Required.
  /// [endTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [startTime] Optional.
  const GetRdsBackupsResult({
    this.backupMode,
    this.backupStatus,
    required this.backups,
    required this.dbInstanceId,
    this.endTime,
    required this.id,
    required this.ids,
    this.outputFile,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMode': ?backupMode,
      'backupStatus': ?backupStatus,
      'backups': pulumi.Input.encodeList<GetRdsBackupsBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'startTime': ?startTime,
    };
  }

  factory GetRdsBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetRdsBackupsResult(
      backupMode: (() { final guardedValue = map['backupMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupStatus: (() { final guardedValue = map['backupStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: pulumi.Input.decodeList<GetRdsBackupsBackup>(map['backups']!, (value) => GetRdsBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

