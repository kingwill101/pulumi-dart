// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_snapshot_ecs_snapshot_args_doc}
/// The set of arguments for EcsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_snapshot_ecs_snapshot_args_doc}
class EcsSnapshotArgs {
  /// The category of the snapshot. Valid values:
  final pulumi.Input<String>? category;
  /// The description of the snapshot.
  final pulumi.Input<String>? description;
  /// The ID of the disk.
  final pulumi.Input<String> diskId;
  /// Specifies whether to force delete the snapshot that has been used to create disks. Valid values:
  final pulumi.Input<bool>? force;
  /// Field `instant_access` has been deprecated from provider version 1.231.0.
  final pulumi.Input<bool>? instantAccess;
  /// Field `instant_access_retention_days` has been deprecated from provider version 1.231.0.
  final pulumi.Input<int>? instantAccessRetentionDays;
  /// Field `name` has been deprecated from provider version 1.120.0. New field `snapshot_name` instead.
  final pulumi.Input<String>? name;
  /// The ID of the resource group. **NOTE:** From version 1.239.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention period of the snapshot. Valid values: `1` to `65536`. **NOTE:** From version 1.231.0, `retention_days` can be modified.
  final pulumi.Input<int>? retentionDays;
  /// The name of the snapshot.
  final pulumi.Input<String>? snapshotName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsSnapshotArgs].
  /// [category] The category of the snapshot. Valid values:
  /// [description] The description of the snapshot.
  /// [diskId] The ID of the disk.
  /// [force] Specifies whether to force delete the snapshot that has been used to create disks. Valid values:
  /// [instantAccess] Field `instant_access` has been deprecated from provider version 1.231.0.
  /// [instantAccessRetentionDays] Field `instant_access_retention_days` has been deprecated from provider version 1.231.0.
  /// [name] Field `name` has been deprecated from provider version 1.120.0. New field `snapshot_name` instead.
  /// [resourceGroupId] The ID of the resource group. **NOTE:** From version 1.239.0, `resource_group_id` can be modified.
  /// [retentionDays] The retention period of the snapshot. Valid values: `1` to `65536`. **NOTE:** From version 1.231.0, `retention_days` can be modified.
  /// [snapshotName] The name of the snapshot.
  /// [tags] A mapping of tags to assign to the resource.
  EcsSnapshotArgs({
    pulumi.Output<String>? category,
    pulumi.Output<String>? description,
    required pulumi.Output<String> diskId,
    pulumi.Output<bool>? force,
    pulumi.Output<bool>? instantAccess,
    pulumi.Output<int>? instantAccessRetentionDays,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asInput<String>(diskId),
      force = pulumi.Input.asOptionalInput<bool>(force),
      instantAccess = pulumi.Input.asOptionalInput<bool>(instantAccess),
      instantAccessRetentionDays = pulumi.Input.asOptionalInput<int>(instantAccessRetentionDays),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'description': ?description,
      'diskId': diskId,
      'force': ?force,
      'instantAccess': ?instantAccess,
      'instantAccessRetentionDays': ?instantAccessRetentionDays,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
      'tags': ?tags,
    };
  }

  factory EcsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return EcsSnapshotArgs(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instantAccess: map['instantAccess'] == null ? null : pulumi.Output.create<bool>(map['instantAccess'] as bool),
      instantAccessRetentionDays: map['instantAccessRetentionDays'] == null ? null : pulumi.Output.create<int>(map['instantAccessRetentionDays'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

