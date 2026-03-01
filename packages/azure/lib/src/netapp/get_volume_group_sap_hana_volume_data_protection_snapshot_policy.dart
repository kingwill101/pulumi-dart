// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final String snapshotPolicyId;

  /// Creates a new [GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: map['snapshotPolicyId'] as String,
    );
  }
}

