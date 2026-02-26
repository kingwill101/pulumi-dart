// ignore_for_file: unused_element, unnecessary_cast

import 'gce_regional_persistent_disk_reclaim_policy2.dart';

/// A PersistentDirectory backed by a Compute Engine regional persistent disk. The persistent_directories field is repeated, but it may contain only one entry. It creates a [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks) that mounts to the workstation VM at `/home` when the session starts and detaches when the session ends. If this field is empty, workstations created with this configuration do not have a persistent home directory.
class GceRegionalPersistentDisk2 {
  /// Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  final String? diskType;

  /// Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  final String? fsType;

  /// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  final GceRegionalPersistentDiskReclaimPolicy2? reclaimPolicy;

  /// Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  final int? sizeGb;

  /// Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty.
  final String? sourceSnapshot;

  GceRegionalPersistentDisk2({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final fsTypeValue = fsType;
    if (fsTypeValue != null) {
      map['fsType'] = fsTypeValue;
    }
    final reclaimPolicyValue = reclaimPolicy;
    if (reclaimPolicyValue != null) {
      map['reclaimPolicy'] = reclaimPolicyValue.value;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    return map;
  }

  factory GceRegionalPersistentDisk2.fromMap(Map<String, dynamic> map) {
    return GceRegionalPersistentDisk2(
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      reclaimPolicy: map['reclaimPolicy'] == null
          ? null
          : GceRegionalPersistentDiskReclaimPolicy2.fromValue(
              map['reclaimPolicy'] as String),
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
    );
  }
}
