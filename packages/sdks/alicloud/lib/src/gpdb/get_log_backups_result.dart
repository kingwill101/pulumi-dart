// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_backups_logbackup.dart';

/// Result data returned by getLogBackups.
class GetLogBackupsResult {
  /// The ID of the Master node of the instance.
  final String dbInstanceId;
  final String? endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Logbackup IDs.
  final List<String> ids;
  /// A list of Logbackup Entries. Each element contains the following attributes:
  final List<GetLogBackupsLogbackup> logbackups;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? startTime;

  /// Creates a new [GetLogBackupsResult].
  /// [dbInstanceId] The ID of the Master node of the instance.
  /// [endTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Logbackup IDs.
  /// [logbackups] A list of Logbackup Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [startTime] Optional.
  GetLogBackupsResult({
    required this.dbInstanceId,
    this.endTime,
    required this.id,
    required this.ids,
    required this.logbackups,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'id': id,
      'ids': ids,
      'logbackups': pulumi.Input.encodeList<GetLogBackupsLogbackup, Map<String, dynamic>>(logbackups, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'startTime': ?startTime,
    };
  }

  factory GetLogBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetLogBackupsResult(
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logbackups: pulumi.Input.decodeList<GetLogBackupsLogbackup>(map['logbackups']!, (value) => GetLogBackupsLogbackup.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

