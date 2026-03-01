// ignore_for_file: unused_element, unnecessary_cast

import 'data_disk_disk_encryption.dart';
import 'data_disk_disk_type.dart';

/// An instance-attached disk resource.
class DataDisk {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final DataDiskDiskEncryption? diskEncryption;

  /// Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  final String? diskSizeGb;

  /// Optional. Input only. Indicates the type of the disk.
  final DataDiskDiskType? diskType;

  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final String? kmsKey;

  /// Creates a new [DataDisk].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  /// [diskType] Optional. Input only. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  DataDisk({this.diskEncryption, this.diskSizeGb, this.diskType, this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': ?diskEncryption == null ? null : diskEncryption!.value,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType == null ? null : diskType!.value,
      'kmsKey': ?kmsKey,
    };
  }

  factory DataDisk.fromMap(Map<String, dynamic> map) {
    return DataDisk(
      diskEncryption: map['diskEncryption'] == null
          ? null
          : DataDiskDiskEncryption.fromValue(map['diskEncryption'] as String),
      diskSizeGb: map['diskSizeGb'] == null
          ? null
          : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null
          ? null
          : DataDiskDiskType.fromValue(map['diskType'] as String),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
