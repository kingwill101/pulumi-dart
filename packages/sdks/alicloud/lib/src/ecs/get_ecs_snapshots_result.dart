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
      'snapshots':
          pulumi.Input.encodeList<
            GetEcsSnapshotsSnapshot,
            Map<String, dynamic>
          >(snapshots, (value) => value.toMap()),
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usage': ?usage,
    };
  }

  factory GetEcsSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotsResult(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshotLinkId: (() {
        final guardedValue = map['snapshotLinkId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshotType: (() {
        final guardedValue = map['snapshotType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshots: pulumi.Input.decodeList<GetEcsSnapshotsSnapshot>(
        map['snapshots']!,
        (value) => GetEcsSnapshotsSnapshot.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      sourceDiskType: (() {
        final guardedValue = map['sourceDiskType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
