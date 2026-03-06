// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_nas_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The description of the snapshot. It must be `2` to `256` characters in length and cannot start with `https://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The retention period of the snapshot. Unit: days. Valid values:
  /// * `-1`: The default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  final pulumi.Input<int>? retentionDays;
  /// SnapshotName. It must be `2` to `128` characters in length and must start with a letter, but cannot start with `https://` or `https://`.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [SnapshotArgs].
  /// [description] The description of the snapshot. It must be `2` to `256` characters in length and cannot start with `https://` or `https://`.
  /// [fileSystemId] The ID of the file system.
  /// [retentionDays] The retention period of the snapshot. Unit: days. Valid values:
  /// [snapshotName] SnapshotName. It must be `2` to `128` characters in length and must start with a letter, but cannot start with `https://` or `https://`.
  const SnapshotArgs({
    this.description,
    required this.fileSystemId,
    this.retentionDays,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileSystemId': fileSystemId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

