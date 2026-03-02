// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_ecs_snapshot_snapshot_args_doc}
class SnapshotArgs {
  final pulumi.Input<String>? category;
  /// Description of the snapshot. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  /// The source disk ID.
  final pulumi.Input<String> diskId;
  final pulumi.Input<bool>? force;
  final pulumi.Input<bool>? instantAccess;
  final pulumi.Input<int>? instantAccessRetentionDays;
  /// The name of the snapshot to be created. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// It cannot start with auto, because snapshot names starting with auto are recognized as automatic snapshots.
  final pulumi.Input<String>? name;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<int>? retentionDays;
  final pulumi.Input<String>? snapshotName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SnapshotArgs].
  /// [category] Optional.
  /// [description] Description of the snapshot. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [diskId] The source disk ID.
  /// [force] Optional.
  /// [instantAccess] Optional.
  /// [instantAccessRetentionDays] Optional.
  /// [name] The name of the snapshot to be created. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [resourceGroupId] The ID of the resource group.
  /// [retentionDays] Optional.
  /// [snapshotName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  SnapshotArgs({
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

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
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

