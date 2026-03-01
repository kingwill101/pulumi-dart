// ignore_for_file: unused_element, unnecessary_cast


/// Volume Snapshot Properties
class VolumeSnapshotPropertiesResponse {
  /// Snapshot Policy ResourceId
  final String? snapshotPolicyId;

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
      snapshotPolicyId: map['snapshotPolicyId'] == null ? null : map['snapshotPolicyId'] as String,
    );
  }
}

