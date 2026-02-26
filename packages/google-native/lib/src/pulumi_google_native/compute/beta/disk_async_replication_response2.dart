// ignore_for_file: unused_element, unnecessary_cast

class DiskAsyncReplicationResponse2 {
  /// URL of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  final String consistencyGroupPolicy;

  /// ID of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  final String consistencyGroupPolicyId;

  /// The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String disk;

  /// The unique ID of the other disk asynchronously replicated to or from the current disk. This value identifies the exact disk that was used to create this replication. For example, if you started replicating the persistent disk from a disk that was later deleted and recreated under the same name, the disk ID would identify the exact version of the disk that was used.
  final String diskId;

  DiskAsyncReplicationResponse2({
    required this.consistencyGroupPolicy,
    required this.consistencyGroupPolicyId,
    required this.disk,
    required this.diskId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consistencyGroupPolicy'] = consistencyGroupPolicy;
    map['consistencyGroupPolicyId'] = consistencyGroupPolicyId;
    map['disk'] = disk;
    map['diskId'] = diskId;
    return map;
  }

  factory DiskAsyncReplicationResponse2.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationResponse2(
      consistencyGroupPolicy: map['consistencyGroupPolicy'] as String,
      consistencyGroupPolicyId: map['consistencyGroupPolicyId'] as String,
      disk: map['disk'] as String,
      diskId: map['diskId'] as String,
    );
  }
}
