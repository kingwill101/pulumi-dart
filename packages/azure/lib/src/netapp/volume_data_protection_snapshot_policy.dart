// ignore_for_file: unused_element, unnecessary_cast


class VolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  ///
  /// A full example of the `data_protection_snapshot_policy` attribute usage can be found in the `./examples/netapp/nfsv3_volume_with_snapshot_policy` directory within the GitHub Repository
  ///
  /// > **Note:** `data_protection_snapshot_policy` block can be used alone or with data_protection_replication in the primary volume only, if enabling it in the secondary, an error will be thrown.
  final String snapshotPolicyId;

  /// Creates a new [VolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  VolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory VolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: map['snapshotPolicyId'] as String,
    );
  }
}

