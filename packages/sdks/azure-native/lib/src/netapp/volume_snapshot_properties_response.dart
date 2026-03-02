// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Snapshot Properties
class VolumeSnapshotPropertiesResponse {
  /// Snapshot Policy ResourceId
  final pulumi.Input<String>? snapshotPolicyId;

  /// Creates a new [VolumeSnapshotPropertiesResponse].
  /// [snapshotPolicyId] Snapshot Policy ResourceId
  VolumeSnapshotPropertiesResponse({
    this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': ?snapshotPolicyId,
    };
  }

  factory VolumeSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPropertiesResponse(
      snapshotPolicyId: map['snapshotPolicyId'] == null ? null : (map['snapshotPolicyId'] as String).input(),
    );
  }
}

