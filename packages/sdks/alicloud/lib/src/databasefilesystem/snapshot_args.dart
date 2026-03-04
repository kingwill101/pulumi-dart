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
    this.description,
    this.force,
    required this.instanceId,
    this.retentionDays,
    this.snapshotName,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
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
    );
  }
}
