// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_snapshot.dart';

/// Result data returned by getSnapshots.
class GetSnapshotsResult {
  final String? bucket;
  final String? completeTime;
  final String? completeTimeChecker;
  final String? createTime;
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final int? limit;
  final String? outputFile;
  final String? query;
  final List<GetSnapshotsSnapshot> snapshots;
  final String sourceType;
  final String? status;
  final String vaultId;

  /// Creates a new [GetSnapshotsResult].
  /// [bucket] Optional.
  /// [completeTime] Optional.
  /// [completeTimeChecker] Optional.
  /// [createTime] Optional.
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [limit] Optional.
  /// [outputFile] Optional.
  /// [query] Optional.
  /// [snapshots] Required.
  /// [sourceType] Required.
  /// [status] Optional.
  /// [vaultId] Required.
  GetSnapshotsResult({
    this.bucket,
    this.completeTime,
    this.completeTimeChecker,
    this.createTime,
    this.fileSystemId,
    required this.id,
    required this.ids,
    this.instanceId,
    this.limit,
    this.outputFile,
    this.query,
    required this.snapshots,
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
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'limit': ?limit,
      'outputFile': ?outputFile,
      'query': ?query,
      'snapshots': pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'sourceType': sourceType,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      bucket: map['bucket'] == null ? null : map['bucket']! as String,
      completeTime: map['completeTime'] == null ? null : map['completeTime']! as String,
      completeTimeChecker: map['completeTimeChecker'] == null ? null : map['completeTimeChecker']! as String,
      createTime: map['createTime'] == null ? null : map['createTime']! as String,
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      limit: map['limit'] == null ? null : map['limit']! as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      query: map['query'] == null ? null : map['query']! as String,
      snapshots: pulumi.Input.decodeList<GetSnapshotsSnapshot>(map['snapshots'], (value) => GetSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      sourceType: map['sourceType'] as String,
      status: map['status'] == null ? null : map['status']! as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

