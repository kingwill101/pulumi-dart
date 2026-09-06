// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume Snapshot Properties
class VolumeSnapshotPropertiesResponse {
  /// Snapshot Policy ResourceId
  final pulumi.Input<String?>? snapshotPolicyId;

  /// Creates a new [VolumeSnapshotPropertiesResponse].
  /// [snapshotPolicyId] Snapshot Policy ResourceId
  const VolumeSnapshotPropertiesResponse({
    this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': ?snapshotPolicyId,
    };
  }

  factory VolumeSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPropertiesResponse(
      snapshotPolicyId: (() { final guardedValue = map['snapshotPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
