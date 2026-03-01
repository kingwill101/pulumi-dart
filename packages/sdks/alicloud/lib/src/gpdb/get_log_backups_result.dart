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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logbackups: pulumi.Input.decodeList<GetLogBackupsLogbackup>(map['logbackups'], (value) => GetLogBackupsLogbackup.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

