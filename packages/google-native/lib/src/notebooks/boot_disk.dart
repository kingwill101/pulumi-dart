// ignore_for_file: unused_element, unnecessary_cast

import 'boot_disk_disk_encryption.dart';
import 'boot_disk_disk_type.dart';

/// The definition of a boot disk.
class BootDisk {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final BootDiskDiskEncryption? diskEncryption;

  /// Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  final String? diskSizeGb;

  /// Optional. Indicates the type of the disk.
  final BootDiskDiskType? diskType;

  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final String? kmsKey;

  /// Creates a new [BootDisk].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  /// [diskType] Optional. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  BootDisk({this.diskEncryption, this.diskSizeGb, this.diskType, this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': ?diskEncryption == null ? null : diskEncryption!.value,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType == null ? null : diskType!.value,
      'kmsKey': ?kmsKey,
    };
  }

  factory BootDisk.fromMap(Map<String, dynamic> map) {
    return BootDisk(
      diskEncryption: map['diskEncryption'] == null
          ? null
          : BootDiskDiskEncryption.fromValue(map['diskEncryption'] as String),
      diskSizeGb: map['diskSizeGb'] == null
          ? null
          : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null
          ? null
          : BootDiskDiskType.fromValue(map['diskType'] as String),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
