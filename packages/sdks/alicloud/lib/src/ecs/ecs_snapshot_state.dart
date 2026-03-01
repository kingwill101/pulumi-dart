// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsSnapshot resources.
class EcsSnapshotState {
  /// The category of the snapshot. Valid values:
  final pulumi.Input<String>? category;
  /// (Available since v1.239.0) The time when the snapshot was created.
  final pulumi.Input<String>? createTime;
  /// The description of the snapshot.
  final pulumi.Input<String>? description;
  /// The ID of the disk.
  final pulumi.Input<String>? diskId;
  /// Specifies whether to force delete the snapshot that has been used to create disks. Valid values:
  final pulumi.Input<bool>? force;
  /// Field `instant_access` has been deprecated from provider version 1.231.0.
  final pulumi.Input<bool>? instantAccess;
  /// Field `instant_access_retention_days` has been deprecated from provider version 1.231.0.
  final pulumi.Input<int>? instantAccessRetentionDays;
  /// Field `name` has been deprecated from provider version 1.120.0. New field `snapshot_name` instead.
  final pulumi.Input<String>? name;
  /// (Available since v1.239.0) The region ID of the snapshot.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group. **NOTE:** From version 1.239.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention period of the snapshot. Valid values: `1` to `65536`. **NOTE:** From version 1.231.0, `retention_days` can be modified.
  final pulumi.Input<int>? retentionDays;
  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;
  /// The status of the Snapshot.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsSnapshotState].
  /// [category] The category of the snapshot. Valid values:
  /// [createTime] (Available since v1.239.0) The time when the snapshot was created.
  /// [description] The description of the snapshot.
  /// [diskId] The ID of the disk.
  /// [force] Specifies whether to force delete the snapshot that has been used to create disks. Valid values:
  /// [instantAccess] Field `instant_access` has been deprecated from provider version 1.231.0.
  /// [instantAccessRetentionDays] Field `instant_access_retention_days` has been deprecated from provider version 1.231.0.
  /// [name] Field `name` has been deprecated from provider version 1.120.0. New field `snapshot_name` instead.
  /// [regionId] (Available since v1.239.0) The region ID of the snapshot.
  /// [resourceGroupId] The ID of the resource group. **NOTE:** From version 1.239.0, `resource_group_id` can be modified.
  /// [retentionDays] The retention period of the snapshot. Valid values: `1` to `65536`. **NOTE:** From version 1.231.0, `retention_days` can be modified.
  /// [snapshotName] The name of the snapshot.
  /// [status] The status of the Snapshot.
  /// [tags] A mapping of tags to assign to the resource.
  EcsSnapshotState({
    pulumi.Output<String>? category,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskId,
    pulumi.Output<bool>? force,
    pulumi.Output<bool>? instantAccess,
    pulumi.Output<int>? instantAccessRetentionDays,
    pulumi.Output<String>? name,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      force = pulumi.Input.asOptionalInput<bool>(force),
      instantAccess = pulumi.Input.asOptionalInput<bool>(instantAccess),
      instantAccessRetentionDays = pulumi.Input.asOptionalInput<int>(instantAccessRetentionDays),
      name = pulumi.Input.asOptionalInput<String>(name),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createTime': ?createTime,
      'description': ?description,
      'diskId': ?diskId,
      'force': ?force,
      'instantAccess': ?instantAccess,
      'instantAccessRetentionDays': ?instantAccessRetentionDays,
      'name': ?name,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory EcsSnapshotState.fromMap(Map<String, dynamic> map) {
    return EcsSnapshotState(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instantAccess: map['instantAccess'] == null ? null : pulumi.Output.create<bool>(map['instantAccess'] as bool),
      instantAccessRetentionDays: map['instantAccessRetentionDays'] == null ? null : pulumi.Output.create<int>(map['instantAccessRetentionDays'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

