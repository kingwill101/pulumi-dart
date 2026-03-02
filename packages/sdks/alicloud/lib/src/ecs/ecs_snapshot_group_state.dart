// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsSnapshotGroup resources.
class EcsSnapshotGroupState {
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
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the snapshot group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsSnapshotGroupState].
  /// [description] The description of the snapshot-consistent group. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [diskIds] The ID of disk for which to create snapshots. You can specify multiple disk IDs across instances with the same zone.
  /// [excludeDiskIds] The ID of disk N for which you do not need to create snapshots. After this parameter is specified, the created snapshot-consistent group does not contain snapshots of the disk.
  /// [instanceId] The ID of the instance.
  /// [instantAccess] Specifies whether to enable the instant access feature.
  /// [instantAccessRetentionDays] Specify the number of days for which the instant access feature is available. Unit: days. Valid values: `1` to `65535`.
  /// [resourceGroupId] The ID of the resource group to which the snapshot consistency group belongs.
  /// [snapshotGroupName] The name of the snapshot-consistent group. The name must be `2` to `128` characters in length, and can contain letters, digits, periods (.), underscores (_), hyphens (-), and colons (:). It must start with a letter or a digit and cannot start with `http://` or `https://`.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the snapshot group.
  EcsSnapshotGroupState({
    this.description,
    this.diskIds,
    this.excludeDiskIds,
    this.instanceId,
    this.instantAccess,
    this.instantAccessRetentionDays,
    this.resourceGroupId,
    this.snapshotGroupName,
    this.status,
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
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory EcsSnapshotGroupState.fromMap(Map<String, dynamic> map) {
    return EcsSnapshotGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskIds: map['diskIds'] == null ? null : ((map['diskIds']! as List).cast<String>()).input(),
      excludeDiskIds: map['excludeDiskIds'] == null ? null : ((map['excludeDiskIds']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      instantAccess: map['instantAccess'] == null ? null : (map['instantAccess']! as bool).input(),
      instantAccessRetentionDays: map['instantAccessRetentionDays'] == null ? null : (map['instantAccessRetentionDays']! as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      snapshotGroupName: map['snapshotGroupName'] == null ? null : (map['snapshotGroupName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

