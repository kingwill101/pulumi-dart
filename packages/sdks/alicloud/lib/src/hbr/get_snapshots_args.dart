// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  /// The bucket name of OSS. While source_type equals `OSS`, this parameter must be set.
  final pulumi.Input<String>? bucket;
  /// Timestamp of Snapshot completion. Note The time format of the API adopts the ISO 8601 format, such as 2021-07-09T15:45:30CST or 2021-07-09T07:45:30Z. **Note**: While `complete_time_checker` equals `BETWEEN`, this field should be formatted such as `"2021-08-20T14:17:15CST,2021-08-26T14:17:15CST"`, The first part of this string is the start time, the second part is the end time, and the two parts should be separated by commas.
  final pulumi.Input<String>? completeTime;
  /// Complete time filter operator. Optional values: `MATCH_TERM`, `GREATER_THAN`, `GREATER_THAN_OR_EQUAL`, `LESS_THAN`, `LESS_THAN_OR_EQUAL`, `BETWEEN`.
  final pulumi.Input<String>? completeTimeChecker;
  /// File system creation timestamp of Nas. While source_type equals `NAS`, this parameter must be set. **Note** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  final pulumi.Input<String>? createTime;
  /// The File System ID of Nas. While source_type equals `NAS`, this parameter must be set.
  final pulumi.Input<String>? fileSystemId;
  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of ECS instance. The ecs backup client must have been installed on the host. While source_type equals `ECS_FILE`, this parameter must be set.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<int>? limit;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? query;
  /// Data source type, valid values: `ECS_FILE`, `OSS`, `NAS`.
  final pulumi.Input<String> sourceType;
  /// The status of snapshot, valid values: `COMPLETE`, `PARTIAL_COMPLETE`.
  final pulumi.Input<String>? status;
  /// The ID of Vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetSnapshotsArgs].
  /// [bucket] The bucket name of OSS. While source_type equals `OSS`, this parameter must be set.
  /// [completeTime] Timestamp of Snapshot completion. Note The time format of the API adopts the ISO 8601 format, such as 2021-07-09T15:45:30CST or 2021-07-09T07:45:30Z. **Note**: While `complete_time_checker` equals `BETWEEN`, this field should be formatted such as `"2021-08-20T14:17:15CST,2021-08-26T14:17:15CST"`, The first part of this string is the start time, the second part is the end time, and the two parts should be separated by commas.
  /// [completeTimeChecker] Complete time filter operator. Optional values: `MATCH_TERM`, `GREATER_THAN`, `GREATER_THAN_OR_EQUAL`, `LESS_THAN`, `LESS_THAN_OR_EQUAL`, `BETWEEN`.
  /// [createTime] File system creation timestamp of Nas. While source_type equals `NAS`, this parameter must be set. **Note** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  /// [fileSystemId] The File System ID of Nas. While source_type equals `NAS`, this parameter must be set.
  /// [ids] A list of Snapshot IDs.
  /// [instanceId] The ID of ECS instance. The ecs backup client must have been installed on the host. While source_type equals `ECS_FILE`, this parameter must be set.
  /// [limit] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [query] Optional.
  /// [sourceType] Data source type, valid values: `ECS_FILE`, `OSS`, `NAS`.
  /// [status] The status of snapshot, valid values: `COMPLETE`, `PARTIAL_COMPLETE`.
  /// [vaultId] The ID of Vault.
  GetSnapshotsArgs({
    this.bucket,
    this.completeTime,
    this.completeTimeChecker,
    this.createTime,
    this.fileSystemId,
    this.ids,
    this.instanceId,
    this.limit,
    this.outputFile,
    this.query,
    required this.sourceType,
    this.status,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'completeTime': ?completeTime,
      'completeTimeChecker': ?completeTimeChecker,
      'createTime': ?createTime,
      'fileSystemId': ?fileSystemId,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'limit': ?limit,
      'outputFile': ?outputFile,
      'query': ?query,
      'sourceType': sourceType,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      completeTime: map['completeTime'] == null ? null : (map['completeTime'] as String).input(),
      completeTimeChecker: map['completeTimeChecker'] == null ? null : (map['completeTimeChecker'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      limit: map['limit'] == null ? null : (map['limit'] as int).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

