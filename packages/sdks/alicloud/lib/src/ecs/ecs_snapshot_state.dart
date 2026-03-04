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
    this.category,
    this.createTime,
    this.description,
    this.diskId,
    this.force,
    this.instantAccess,
    this.instantAccessRetentionDays,
    this.name,
    this.regionId,
    this.resourceGroupId,
    this.retentionDays,
    this.snapshotName,
    this.status,
    this.tags,
  });

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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instantAccess: (() {
        final guardedValue = map['instantAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instantAccessRetentionDays: (() {
        final guardedValue = map['instantAccessRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionDays: (() {
        final guardedValue = map['retentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
