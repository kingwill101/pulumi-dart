// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The description of the snapshot. The `description` must be `2` to `256` characters in length. It cannot start with `http://` or `https://`. **NOTE:** From version 1.233.1, `description` can be modified.
  final pulumi.Input<String>? description;
  /// Specifies whether to force delete the snapshot. Valid values:
  final pulumi.Input<bool>? force;
  /// The ID of the Database File System.
  final pulumi.Input<String>? instanceId;
  /// The retention period of the snapshot. Valid values: `1` to `65536`.
  final pulumi.Input<int>? retentionDays;
  /// The name of the snapshot. The `snapshot_name` must be `2` to `128` characters in length. It must start with a large or small letter or Chinese, and cannot start with `http://`, `https://`, `auto` or `dbfs-auto`. It can contain numbers, colons (:), underscores (_), or hyphens (-). **NOTE:** From version 1.233.1, `snapshot_name` can be modified.
  final pulumi.Input<String>? snapshotName;
  /// The status of the Snapshot.
  final pulumi.Input<String>? status;

  /// Creates a new [SnapshotState].
  /// [description] The description of the snapshot. The `description` must be `2` to `256` characters in length. It cannot start with `http://` or `https://`. **NOTE:** From version 1.233.1, `description` can be modified.
  /// [force] Specifies whether to force delete the snapshot. Valid values:
  /// [instanceId] The ID of the Database File System.
  /// [retentionDays] The retention period of the snapshot. Valid values: `1` to `65536`.
  /// [snapshotName] The name of the snapshot. The `snapshot_name` must be `2` to `128` characters in length. It must start with a large or small letter or Chinese, and cannot start with `http://`, `https://`, `auto` or `dbfs-auto`. It can contain numbers, colons (:), underscores (_), or hyphens (-). **NOTE:** From version 1.233.1, `snapshot_name` can be modified.
  /// [status] The status of the Snapshot.
  SnapshotState({
    this.description,
    this.force,
    this.instanceId,
    this.retentionDays,
    this.snapshotName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'force': ?force,
      'instanceId': ?instanceId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
      'status': ?status,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

