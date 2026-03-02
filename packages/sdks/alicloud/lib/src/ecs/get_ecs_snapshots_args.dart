// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_snapshots_get_ecs_snapshots_args_doc}
/// Arguments for getEcsSnapshots.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_snapshots_get_ecs_snapshots_args_doc}
class GetEcsSnapshotsArgs {
  /// The category of the snapshot. Valid Values: `flash` and `standard`.
  final pulumi.Input<String>? category;
  /// Specifies whether to check the validity of the request without actually making the request.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether the snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  /// The kms key id.
  final pulumi.Input<String>? kmsKeyId;
  /// A regex string to filter results by Snapshot name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The snapshot link id.
  final pulumi.Input<String>? snapshotLinkId;
  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String>? snapshotType;
  /// The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  final pulumi.Input<String>? sourceDiskType;
  /// The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the snapshot.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String>? type;
  /// A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String>? usage;

  /// Creates a new [GetEcsSnapshotsArgs].
  /// [category] The category of the snapshot. Valid Values: `flash` and `standard`.
  /// [dryRun] Specifies whether to check the validity of the request without actually making the request.
  /// [encrypted] Specifies whether the snapshot is encrypted.
  /// [ids] A list of Snapshot IDs.
  /// [kmsKeyId] The kms key id.
  /// [nameRegex] A regex string to filter results by Snapshot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The resource group id.
  /// [snapshotLinkId] The snapshot link id.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotType] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [sourceDiskType] The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  /// [status] The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  /// [tags] A mapping of tags to assign to the snapshot.
  /// [type] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [usage] A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  GetEcsSnapshotsArgs({
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

  factory GetEcsSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotsArgs(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      snapshotLinkId: map['snapshotLinkId'] == null ? null : (map['snapshotLinkId']! as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName']! as String).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType']! as String).input(),
      sourceDiskType: map['sourceDiskType'] == null ? null : (map['sourceDiskType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      usage: map['usage'] == null ? null : (map['usage']! as String).input(),
    );
  }
}

