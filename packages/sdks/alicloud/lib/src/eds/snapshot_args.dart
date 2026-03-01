// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_eds_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The description of the Snapshot.
  final pulumi.Input<String>? description;
  /// The ID of the Desktop.
  final pulumi.Input<String> desktopId;
  /// The name of the Snapshot.
  final pulumi.Input<String> snapshotName;
  /// The type of the disk for which to create a snapshot. Valid values: `SYSTEM`, `DATA`.
  final pulumi.Input<String> sourceDiskType;

  /// Creates a new [SnapshotArgs].
  /// [description] The description of the Snapshot.
  /// [desktopId] The ID of the Desktop.
  /// [snapshotName] The name of the Snapshot.
  /// [sourceDiskType] The type of the disk for which to create a snapshot. Valid values: `SYSTEM`, `DATA`.
  SnapshotArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> desktopId,
    required pulumi.Output<String> snapshotName,
    required pulumi.Output<String> sourceDiskType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      desktopId = pulumi.Input.asInput<String>(desktopId),
      snapshotName = pulumi.Input.asInput<String>(snapshotName),
      sourceDiskType = pulumi.Input.asInput<String>(sourceDiskType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desktopId': desktopId,
      'snapshotName': snapshotName,
      'sourceDiskType': sourceDiskType,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desktopId: pulumi.Output.create<String>(map['desktopId'] as String),
      snapshotName: pulumi.Output.create<String>(map['snapshotName'] as String),
      sourceDiskType: pulumi.Output.create<String>(map['sourceDiskType'] as String),
    );
  }
}

