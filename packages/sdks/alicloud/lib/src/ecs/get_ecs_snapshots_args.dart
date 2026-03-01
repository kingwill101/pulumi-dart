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
    pulumi.Output<String>? category,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? snapshotLinkId,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDiskType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? usage,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      snapshotLinkId = pulumi.Input.asOptionalInput<String>(snapshotLinkId),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDiskType = pulumi.Input.asOptionalInput<String>(sourceDiskType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      usage = pulumi.Input.asOptionalInput<String>(usage);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      snapshotLinkId: map['snapshotLinkId'] == null ? null : pulumi.Output.create<String>(map['snapshotLinkId'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDiskType: map['sourceDiskType'] == null ? null : pulumi.Output.create<String>(map['sourceDiskType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usage: map['usage'] == null ? null : pulumi.Output.create<String>(map['usage'] as String),
    );
  }
}

