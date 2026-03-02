// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Snapshot Properties
class VolumeSnapshotProperties {
  /// Snapshot Policy ResourceId
  final pulumi.Input<String>? snapshotPolicyId;

  /// Creates a new [VolumeSnapshotProperties].
  /// [snapshotPolicyId] Snapshot Policy ResourceId
  VolumeSnapshotProperties({
    this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': ?snapshotPolicyId,
    };
  }

  factory VolumeSnapshotProperties.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotProperties(
      snapshotPolicyId: map['snapshotPolicyId'] == null ? null : (map['snapshotPolicyId']! as String).input(),
    );
  }
}

