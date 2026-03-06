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
  const EcsSnapshotGroupArgs({
    this.description,
    this.diskIds,
    this.excludeDiskIds,
    this.instanceId,
    this.instantAccess,
    this.instantAccessRetentionDays,
    this.resourceGroupId,
    this.snapshotGroupName,
    this.tags,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIds: (() { final guardedValue = map['diskIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeDiskIds: (() { final guardedValue = map['excludeDiskIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instantAccess: (() { final guardedValue = map['instantAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instantAccessRetentionDays: (() { final guardedValue = map['instantAccessRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotGroupName: (() { final guardedValue = map['snapshotGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

