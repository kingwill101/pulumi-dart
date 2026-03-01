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

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
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

