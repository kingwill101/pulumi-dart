// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  final pulumi.Input<String>? category;
  final pulumi.Input<bool>? dryRun;
  /// Whether the snapshot is encrypted or not.
  final pulumi.Input<bool>? encrypted;
  /// A list of snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? snapshotLinkId;
  final pulumi.Input<String>? snapshotName;
  final pulumi.Input<String>? snapshotType;
  /// Source disk attribute. Value range: `System`,`Data`.
  final pulumi.Input<String>? sourceDiskType;
  /// The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the snapshot.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;
  /// Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String>? usage;

  /// Creates a new [GetSnapshotsArgs].
  /// [category] Optional.
  /// [dryRun] Optional.
  /// [encrypted] Whether the snapshot is encrypted or not.
  /// [ids] A list of snapshot IDs.
  /// [kmsKeyId] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [snapshotLinkId] Optional.
  /// [snapshotName] Optional.
  /// [snapshotType] Optional.
  /// [sourceDiskType] Source disk attribute. Value range: `System`,`Data`.
  /// [status] The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  /// [tags] A map of tags assigned to the snapshot.
  /// [type] Optional.
  /// [usage] Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  GetSnapshotsArgs({
    this.category,
    this.dryRun,
    this.encrypted,
    this.ids,
    this.kmsKeyId,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.snapshotLinkId,
    this.snapshotName,
    this.snapshotType,
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
      'ids': ?ids,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'snapshotLinkId': ?snapshotLinkId,
      'snapshotName': ?snapshotName,
      'snapshotType': ?snapshotType,
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usage': ?usage,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      snapshotLinkId: map['snapshotLinkId'] == null ? null : (map['snapshotLinkId'] as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName'] as String).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType'] as String).input(),
      sourceDiskType: map['sourceDiskType'] == null ? null : (map['sourceDiskType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      usage: map['usage'] == null ? null : (map['usage'] as String).input(),
    );
  }
}

