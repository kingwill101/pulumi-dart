// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefilesystem_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The description of the snapshot. The `description` must be `2` to `256` characters in length. It cannot start with `http://` or `https://`. **NOTE:** From version 1.233.1, `description` can be modified.
  final pulumi.Input<String>? description;
  /// Specifies whether to force delete the snapshot. Valid values:
  final pulumi.Input<bool>? force;
  /// The ID of the Database File System.
  final pulumi.Input<String> instanceId;
  /// The retention period of the snapshot. Valid values: `1` to `65536`.
  final pulumi.Input<int>? retentionDays;
  /// The name of the snapshot. The `snapshot_name` must be `2` to `128` characters in length. It must start with a large or small letter or Chinese, and cannot start with `http://`, `https://`, `auto` or `dbfs-auto`. It can contain numbers, colons (:), underscores (_), or hyphens (-). **NOTE:** From version 1.233.1, `snapshot_name` can be modified.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [SnapshotArgs].
  /// [description] The description of the snapshot. The `description` must be `2` to `256` characters in length. It cannot start with `http://` or `https://`. **NOTE:** From version 1.233.1, `description` can be modified.
  /// [force] Specifies whether to force delete the snapshot. Valid values:
  /// [instanceId] The ID of the Database File System.
  /// [retentionDays] The retention period of the snapshot. Valid values: `1` to `65536`.
  /// [snapshotName] The name of the snapshot. The `snapshot_name` must be `2` to `128` characters in length. It must start with a large or small letter or Chinese, and cannot start with `http://`, `https://`, `auto` or `dbfs-auto`. It can contain numbers, colons (:), underscores (_), or hyphens (-). **NOTE:** From version 1.233.1, `snapshot_name` can be modified.
  SnapshotArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? force,
    required pulumi.Output<String> instanceId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? snapshotName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      force = pulumi.Input.asOptionalInput<bool>(force),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'force': ?force,
      'instanceId': instanceId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
    );
  }
}

