// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The ID of the disk.
  final pulumi.Input<String> diskId;
  /// The name of the snapshot. The name must be `2` to `50` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  final pulumi.Input<String> snapshotName;

  /// Creates a new [SnapshotArgs].
  /// [diskId] The ID of the disk.
  /// [snapshotName] The name of the snapshot. The name must be `2` to `50` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  SnapshotArgs({
    required this.diskId,
    required this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'snapshotName': snapshotName,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      diskId: (map['diskId'] as String).input(),
      snapshotName: (map['snapshotName'] as String).input(),
    );
  }
}

