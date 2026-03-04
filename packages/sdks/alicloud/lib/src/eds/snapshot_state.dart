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
    this.description,
    this.desktopId,
    this.snapshotName,
    this.sourceDiskType,
    this.status,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      desktopId: (() {
        final guardedValue = map['desktopId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDiskType: (() {
        final guardedValue = map['sourceDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
