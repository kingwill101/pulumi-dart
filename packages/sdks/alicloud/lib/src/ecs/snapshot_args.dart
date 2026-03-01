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

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
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

