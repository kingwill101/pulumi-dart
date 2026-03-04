// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_ens_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// Snapshot Description Information.
  final pulumi.Input<String>? description;

  /// Cloud Disk ID.
  final pulumi.Input<String> diskId;

  /// The node ID of ENS.
  final pulumi.Input<String> ensRegionId;

  /// Name of the snapshot instance.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [SnapshotArgs].
  /// [description] Snapshot Description Information.
  /// [diskId] Cloud Disk ID.
  /// [ensRegionId] The node ID of ENS.
  /// [snapshotName] Name of the snapshot instance.
  SnapshotArgs({
    this.description,
    required this.diskId,
    required this.ensRegionId,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskId': diskId,
      'ensRegionId': ensRegionId,
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
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      ensRegionId: pulumi.Input.fromValue(map['ensRegionId'] as String),
      snapshotName: (() {
        final guardedValue = map['snapshotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
