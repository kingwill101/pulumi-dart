// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The description of the Snapshot.
  final pulumi.Input<String>? description;
  /// The ID of the Desktop.
  final pulumi.Input<String>? desktopId;
  /// The name of the Snapshot.
  final pulumi.Input<String>? snapshotName;
  /// The type of the disk for which to create a snapshot. Valid values: `SYSTEM`, `DATA`.
  final pulumi.Input<String>? sourceDiskType;
  /// The status of the snapshot.
  final pulumi.Input<String>? status;

  /// Creates a new [SnapshotState].
  /// [description] The description of the Snapshot.
  /// [desktopId] The ID of the Desktop.
  /// [snapshotName] The name of the Snapshot.
  /// [sourceDiskType] The type of the disk for which to create a snapshot. Valid values: `SYSTEM`, `DATA`.
  /// [status] The status of the snapshot.
  SnapshotState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? desktopId,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? sourceDiskType,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      desktopId = pulumi.Input.asOptionalInput<String>(desktopId),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      sourceDiskType = pulumi.Input.asOptionalInput<String>(sourceDiskType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desktopId': ?desktopId,
      'snapshotName': ?snapshotName,
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desktopId: map['desktopId'] == null ? null : pulumi.Output.create<String>(map['desktopId'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      sourceDiskType: map['sourceDiskType'] == null ? null : pulumi.Output.create<String>(map['sourceDiskType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

