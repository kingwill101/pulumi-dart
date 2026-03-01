// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_snapshot.dart';

/// Result data returned by getSnapshots.
class GetSnapshotsResult {
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? snapshotName;
  final List<GetSnapshotsSnapshot> snapshots;
  final String? status;

  /// Creates a new [GetSnapshotsResult].
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [snapshotName] Optional.
  /// [snapshots] Required.
  /// [status] Optional.
  GetSnapshotsResult({
    this.fileSystemId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.snapshotName,
    required this.snapshots,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snapshotName': ?snapshotName,
      'snapshots': pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      snapshotName: map['snapshotName'] == null ? null : map['snapshotName'] as String,
      snapshots: pulumi.Input.decodeList<GetSnapshotsSnapshot>(map['snapshots'], (value) => GetSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

