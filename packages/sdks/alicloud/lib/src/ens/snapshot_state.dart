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
    this.createTime,
    this.description,
    this.diskId,
    this.ensRegionId,
    this.snapshotName,
    this.status,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId'] as String).input(),
      snapshotName: map['snapshotName'] == null ? null : (map['snapshotName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

