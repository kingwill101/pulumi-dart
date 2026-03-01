// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The ID of the disk.
  final pulumi.Input<String>? diskId;
  /// The name of the snapshot. The name must be `2` to `50` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  final pulumi.Input<String>? snapshotName;
  /// The status of the snapshot. Valid values: `Progressing`, `Accomplished` and `Failed`.
  final pulumi.Input<String>? status;

  /// Creates a new [SnapshotState].
  /// [diskId] The ID of the disk.
  /// [snapshotName] The name of the snapshot. The name must be `2` to `50` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  /// [status] The status of the snapshot. Valid values: `Progressing`, `Accomplished` and `Failed`.
  SnapshotState({
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? status,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'snapshotName': ?snapshotName,
      'status': ?status,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

