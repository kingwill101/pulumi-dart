// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_snapshots_snapshot.dart';

/// Result data returned by getEcsSnapshots.
class GetEcsSnapshotsResult {
  /// The category of the snapshot.
  final String? category;
  final bool? dryRun;
  /// Indicates whether the snapshot was encrypted.
  final bool? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? kmsKeyId;
  final String? nameRegex;
  /// A list of Snapshot names.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group to which the snapshot belongs.
  final String? resourceGroupId;
  final String? snapshotLinkId;
  /// The name of the snapshot.
  final String? snapshotName;
  /// The type of the snapshot.
  final String? snapshotType;
  /// A list of Ecs Snapshots. Each element contains the following attributes:
  final List<GetEcsSnapshotsSnapshot> snapshots;
  /// The type of the source disk.
  final String? sourceDiskType;
  /// The status of the snapshot.
  final String? status;
  /// The tags of the snapshot.
  final Map<String, String>? tags;
  /// The type of the snapshot.
  final String? type;
  /// Indicates whether the snapshot was used to create images or cloud disks.
  final String? usage;

  /// Creates a new [GetEcsSnapshotsResult].
  /// [category] The category of the snapshot.
  /// [dryRun] Optional.
  /// [encrypted] Indicates whether the snapshot was encrypted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [kmsKeyId] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Snapshot names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group to which the snapshot belongs.
  /// [snapshotLinkId] Optional.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotType] The type of the snapshot.
  /// [snapshots] A list of Ecs Snapshots. Each element contains the following attributes:
  /// [sourceDiskType] The type of the source disk.
  /// [status] The status of the snapshot.
  /// [tags] The tags of the snapshot.
  /// [type] The type of the snapshot.
  /// [usage] Indicates whether the snapshot was used to create images or cloud disks.
  GetEcsSnapshotsResult({
    this.category,
    this.dryRun,
    this.encrypted,
    required this.id,
    required this.ids,
    this.kmsKeyId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.snapshotLinkId,
    this.snapshotName,
    this.snapshotType,
    required this.snapshots,
    this.sourceDiskType,
    this.status,
    this.tags,
    this.type,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dryRun': ?dryRun,
      'encrypted': ?encrypted,
      'id': id,
      'ids': ids,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'snapshotLinkId': ?snapshotLinkId,
      'snapshotName': ?snapshotName,
      'snapshotType': ?snapshotType,
      'snapshots': pulumi.Input.encodeList<GetEcsSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usage': ?usage,
    };
  }

  factory GetEcsSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotsResult(
      category: map['category'] == null ? null : map['category'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      snapshotLinkId: map['snapshotLinkId'] == null ? null : map['snapshotLinkId'] as String,
      snapshotName: map['snapshotName'] == null ? null : map['snapshotName'] as String,
      snapshotType: map['snapshotType'] == null ? null : map['snapshotType'] as String,
      snapshots: pulumi.Input.decodeList<GetEcsSnapshotsSnapshot>(map['snapshots'], (value) => GetEcsSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      sourceDiskType: map['sourceDiskType'] == null ? null : map['sourceDiskType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      usage: map['usage'] == null ? null : map['usage'] as String,
    );
  }
}

