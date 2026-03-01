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
    pulumi.Output<String>? description,
    required pulumi.Output<String> diskId,
    required pulumi.Output<String> ensRegionId,
    pulumi.Output<String>? snapshotName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asInput<String>(diskId),
      ensRegionId = pulumi.Input.asInput<String>(ensRegionId),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
      ensRegionId: pulumi.Output.create<String>(map['ensRegionId'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
    );
  }
}

