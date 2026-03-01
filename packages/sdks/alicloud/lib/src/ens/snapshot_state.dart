// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// Instance creation timeIt is expressed in accordance with the ISO8601 standard and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.Example value: 2020-08-20 T14:52:28Z.
  final pulumi.Input<String>? createTime;
  /// Snapshot Description Information.
  final pulumi.Input<String>? description;
  /// Cloud Disk ID.
  final pulumi.Input<String>? diskId;
  /// The node ID of ENS.
  final pulumi.Input<String>? ensRegionId;
  /// Name of the snapshot instance.
  final pulumi.Input<String>? snapshotName;
  /// Snapshot Status. Valid values: creating, available, deleting, error.
  final pulumi.Input<String>? status;

  /// Creates a new [SnapshotState].
  /// [createTime] Instance creation timeIt is expressed in accordance with the ISO8601 standard and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.Example value: 2020-08-20 T14:52:28Z.
  /// [description] Snapshot Description Information.
  /// [diskId] Cloud Disk ID.
  /// [ensRegionId] The node ID of ENS.
  /// [snapshotName] Name of the snapshot instance.
  /// [status] Snapshot Status. Valid values: creating, available, deleting, error.
  SnapshotState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'diskId': ?diskId,
      'ensRegionId': ?ensRegionId,
      'snapshotName': ?snapshotName,
      'status': ?status,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

