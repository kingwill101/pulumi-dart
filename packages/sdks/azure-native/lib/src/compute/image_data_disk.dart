// ignore_for_file: unused_element, unnecessary_cast

import 'caching_types.dart';
import 'disk_encryption_set_parameters.dart';
import 'sub_resource.dart';

/// Describes a data disk.
class ImageDataDisk {
  /// The Virtual Hard Disk.
  final String? blobUri;
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final CachingTypes? caching;
  /// Specifies the customer managed disk encryption set resource id for the managed image disk.
  final DiskEncryptionSetParameters? diskEncryptionSet;
  /// Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  final int? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  final int lun;
  /// The managedDisk.
  final SubResource? managedDisk;
  /// The snapshot.
  final SubResource? snapshot;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final String? storageAccountType;

  /// Creates a new [ImageDataDisk].
  /// [blobUri] The Virtual Hard Disk.
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed image disk.
  /// [diskSizeGB] Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  /// [managedDisk] The managedDisk.
  /// [snapshot] The snapshot.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  ImageDataDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSet,
    this.diskSizeGB,
    required this.lun,
    this.managedDisk,
    this.snapshot,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'caching': ?caching == null ? null : caching!.value,
      'diskEncryptionSet': ?diskEncryptionSet == null ? null : diskEncryptionSet!.toMap(),
      'diskSizeGB': ?diskSizeGB,
      'lun': lun,
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ImageDataDisk.fromMap(Map<String, dynamic> map) {
    return ImageDataDisk(
      blobUri: map['blobUri'] == null ? null : map['blobUri'] as String,
      caching: map['caching'] == null ? null : CachingTypes.fromValue(map['caching'] as String),
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParameters.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      lun: map['lun'] as int,
      managedDisk: map['managedDisk'] == null ? null : SubResource.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : SubResource.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

