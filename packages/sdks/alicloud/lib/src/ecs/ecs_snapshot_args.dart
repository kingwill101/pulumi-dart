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
    this.category,
    this.description,
    required this.diskId,
    this.force,
    this.instantAccess,
    this.instantAccessRetentionDays,
    this.name,
    this.resourceGroupId,
    this.retentionDays,
    this.snapshotName,
    this.tags,
  });

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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskId: (map['diskId'] as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      instantAccess: map['instantAccess'] == null ? null : (map['instantAccess']! as bool).input(),
      instantAccessRetentionDays: map['instantAccessRetentionDays'] == null ? null : (map['instantAccessRetentionDays']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

