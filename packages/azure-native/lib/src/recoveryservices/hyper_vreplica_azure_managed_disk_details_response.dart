// ignore_for_file: unused_element, unnecessary_cast


/// Hyper-V Managed disk details.
class HyperVReplicaAzureManagedDiskDetailsResponse {
  /// The disk encryption set ARM Id.
  final String? diskEncryptionSetId;
  /// The disk Id.
  final String? diskId;
  /// The replica disk type.
  final String? replicaDiskType;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;
  /// Seed managed disk Id.
  final String? seedManagedDiskId;
  /// The disk type.
  final String? targetDiskAccountType;

  /// Creates a new [HyperVReplicaAzureManagedDiskDetailsResponse].
  /// [diskEncryptionSetId] The disk encryption set ARM Id.
  /// [diskId] The disk Id.
  /// [replicaDiskType] The replica disk type.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  /// [seedManagedDiskId] Seed managed disk Id.
  /// [targetDiskAccountType] The disk type.
  HyperVReplicaAzureManagedDiskDetailsResponse({
    this.diskEncryptionSetId,
    this.diskId,
    this.replicaDiskType,
    this.sectorSizeInBytes,
    this.seedManagedDiskId,
    this.targetDiskAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'replicaDiskType': ?replicaDiskType,
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedManagedDiskId': ?seedManagedDiskId,
      'targetDiskAccountType': ?targetDiskAccountType,
    };
  }

  factory HyperVReplicaAzureManagedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzureManagedDiskDetailsResponse(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      replicaDiskType: map['replicaDiskType'] == null ? null : map['replicaDiskType'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
      seedManagedDiskId: map['seedManagedDiskId'] == null ? null : map['seedManagedDiskId'] as String,
      targetDiskAccountType: map['targetDiskAccountType'] == null ? null : map['targetDiskAccountType'] as String,
    );
  }
}

