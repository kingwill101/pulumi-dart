// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_snapshot_group_ecs_snapshot_group_args_doc}
/// The set of arguments for EcsSnapshotGroup.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_snapshot_group_ecs_snapshot_group_args_doc}
class EcsSnapshotGroupArgs {
  /// The description of the snapshot-consistent group. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The ID of disk for which to create snapshots. You can specify multiple disk IDs across instances with the same zone.
  final pulumi.Input<List<String>>? diskIds;
  /// The ID of disk N for which you do not need to create snapshots. After this parameter is specified, the created snapshot-consistent group does not contain snapshots of the disk.
  final pulumi.Input<List<String>>? excludeDiskIds;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies whether to enable the instant access feature.
  final pulumi.Input<bool>? instantAccess;
  /// Specify the number of days for which the instant access feature is available. Unit: days. Valid values: `1` to `65535`.
  final pulumi.Input<int>? instantAccessRetentionDays;
  /// The ID of the resource group to which the snapshot consistency group belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the snapshot-consistent group. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), underscores (_), hyphens (-), and colons (:). It must start with a letter or a digit and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? snapshotGroupName;
  /// A mapping of tags to assign to the snapshot group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsSnapshotGroupArgs].
  /// [description] The description of the snapshot-consistent group. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [diskIds] The ID of disk for which to create snapshots. You can specify multiple disk IDs across instances with the same zone.
  /// [excludeDiskIds] The ID of disk N for which you do not need to create snapshots. After this parameter is specified, the created snapshot-consistent group does not contain snapshots of the disk.
  /// [instanceId] The ID of the instance.
  /// [instantAccess] Specifies whether to enable the instant access feature.
  /// [instantAccessRetentionDays] Specify the number of days for which the instant access feature is available. Unit: days. Valid values: `1` to `65535`.
  /// [resourceGroupId] The ID of the resource group to which the snapshot consistency group belongs.
  /// [snapshotGroupName] The name of the snapshot-consistent group. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), underscores (_), hyphens (-), and colons (:). It must start with a letter or a digit and cannot start with `http://` or `https://`.
  /// [tags] A mapping of tags to assign to the snapshot group.
  EcsSnapshotGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? diskIds,
    pulumi.Output<List<String>>? excludeDiskIds,
    pulumi.Output<String>? instanceId,
    pulumi.Output<bool>? instantAccess,
    pulumi.Output<int>? instantAccessRetentionDays,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? snapshotGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diskIds = pulumi.Input.asOptionalInput<List<String>>(diskIds),
      excludeDiskIds = pulumi.Input.asOptionalInput<List<String>>(excludeDiskIds),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instantAccess = pulumi.Input.asOptionalInput<bool>(instantAccess),
      instantAccessRetentionDays = pulumi.Input.asOptionalInput<int>(instantAccessRetentionDays),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      snapshotGroupName = pulumi.Input.asOptionalInput<String>(snapshotGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskIds': ?diskIds,
      'excludeDiskIds': ?excludeDiskIds,
      'instanceId': ?instanceId,
      'instantAccess': ?instantAccess,
      'instantAccessRetentionDays': ?instantAccessRetentionDays,
      'resourceGroupId': ?resourceGroupId,
      'snapshotGroupName': ?snapshotGroupName,
      'tags': ?tags,
    };
  }

  factory EcsSnapshotGroupArgs.fromMap(Map<String, dynamic> map) {
    return EcsSnapshotGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskIds: map['diskIds'] == null ? null : pulumi.Output.create<List<String>>((map['diskIds'] as List).cast<String>()),
      excludeDiskIds: map['excludeDiskIds'] == null ? null : pulumi.Output.create<List<String>>((map['excludeDiskIds'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instantAccess: map['instantAccess'] == null ? null : pulumi.Output.create<bool>(map['instantAccess'] as bool),
      instantAccessRetentionDays: map['instantAccessRetentionDays'] == null ? null : pulumi.Output.create<int>(map['instantAccessRetentionDays'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      snapshotGroupName: map['snapshotGroupName'] == null ? null : pulumi.Output.create<String>(map['snapshotGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

