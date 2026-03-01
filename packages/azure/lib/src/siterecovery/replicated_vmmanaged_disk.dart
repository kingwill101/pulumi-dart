// ignore_for_file: unused_element, unnecessary_cast

import 'replicated_vmmanaged_disk_target_disk_encryption.dart';

class ReplicatedVMManagedDisk {
  /// Id of disk that should be replicated. Changing this forces a new resource to be created.
  final String diskId;
  /// Storage account that should be used for caching. Changing this forces a new resource to be created.
  final String stagingStorageAccountId;
  /// A `target_disk_encryption` block as defined below.
  final ReplicatedVMManagedDiskTargetDiskEncryption? targetDiskEncryption;
  /// The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Creating replicated vm with `target_disk_encryption_set_id` wil take more time (up to 5 hours), please extend the `timeout` for `create`.
  final String? targetDiskEncryptionSetId;
  /// What type should the disk be when a failover is done. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final String targetDiskType;
  /// What type should the disk be that holds the replication data. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final String targetReplicaDiskType;
  /// Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created.
  final String targetResourceGroupId;

  /// Creates a new [ReplicatedVMManagedDisk].
  /// [diskId] Id of disk that should be replicated. Changing this forces a new resource to be created.
  /// [stagingStorageAccountId] Storage account that should be used for caching. Changing this forces a new resource to be created.
  /// [targetDiskEncryption] A `target_disk_encryption` block as defined below.
  /// [targetDiskEncryptionSetId] The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created.
  /// [targetDiskType] What type should the disk be when a failover is done. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [targetReplicaDiskType] What type should the disk be that holds the replication data. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [targetResourceGroupId] Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created.
  ReplicatedVMManagedDisk({
    required this.diskId,
    required this.stagingStorageAccountId,
    this.targetDiskEncryption,
    this.targetDiskEncryptionSetId,
    required this.targetDiskType,
    required this.targetReplicaDiskType,
    required this.targetResourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'stagingStorageAccountId': stagingStorageAccountId,
      'targetDiskEncryption': ?targetDiskEncryption == null ? null : targetDiskEncryption!.toMap(),
      'targetDiskEncryptionSetId': ?targetDiskEncryptionSetId,
      'targetDiskType': targetDiskType,
      'targetReplicaDiskType': targetReplicaDiskType,
      'targetResourceGroupId': targetResourceGroupId,
    };
  }

  factory ReplicatedVMManagedDisk.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMManagedDisk(
      diskId: map['diskId'] as String,
      stagingStorageAccountId: map['stagingStorageAccountId'] as String,
      targetDiskEncryption: map['targetDiskEncryption'] == null ? null : ReplicatedVMManagedDiskTargetDiskEncryption.fromMap((map['targetDiskEncryption'] as Map).cast<String, dynamic>()),
      targetDiskEncryptionSetId: map['targetDiskEncryptionSetId'] == null ? null : map['targetDiskEncryptionSetId'] as String,
      targetDiskType: map['targetDiskType'] as String,
      targetReplicaDiskType: map['targetReplicaDiskType'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] as String,
    );
  }
}

