// ignore_for_file: unused_element, unnecessary_cast

/// An instance-attached disk resource.
class DataDiskResponse {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final String diskEncryption;

  /// Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  final String diskSizeGb;

  /// Optional. Input only. Indicates the type of the disk.
  final String diskType;

  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final String kmsKey;

  /// Creates a new [DataDiskResponse].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  /// [diskType] Optional. Input only. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  DataDiskResponse({
    required this.diskEncryption,
    required this.diskSizeGb,
    required this.diskType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': diskEncryption,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'kmsKey': kmsKey,
    };
  }

  factory DataDiskResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskResponse(
      diskEncryption: map['diskEncryption'] as String,
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      kmsKey: map['kmsKey'] as String,
    );
  }
}
