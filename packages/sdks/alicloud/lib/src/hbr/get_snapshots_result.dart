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
      'snapshots':
          pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(
            snapshots,
            (value) => value.toMap(),
          ),
      'sourceType': sourceType,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      completeTime: (() {
        final guardedValue = map['completeTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      completeTimeChecker: (() {
        final guardedValue = map['completeTimeChecker'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      limit: (() {
        final guardedValue = map['limit'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshots: pulumi.Input.decodeList<GetSnapshotsSnapshot>(
        map['snapshots']!,
        (value) => GetSnapshotsSnapshot.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      sourceType: map['sourceType'] as String,
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vaultId: map['vaultId'] as String,
    );
  }
}
