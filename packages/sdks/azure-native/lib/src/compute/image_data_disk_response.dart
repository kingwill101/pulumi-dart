// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';
import 'sub_resource_response.dart';

/// Describes a data disk.
class ImageDataDiskResponse {
  /// The Virtual Hard Disk.
  final pulumi.Input<String>? blobUri;
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final pulumi.Input<String>? caching;
  /// Specifies the customer managed disk encryption set resource id for the managed image disk.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  final pulumi.Input<int> lun;
  /// The managedDisk.
  final pulumi.Input<SubResourceResponse>? managedDisk;
  /// The snapshot.
  final pulumi.Input<SubResourceResponse>? snapshot;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [ImageDataDiskResponse].
  /// [blobUri] The Virtual Hard Disk.
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed image disk.
  /// [diskSizeGB] Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  /// [managedDisk] The managedDisk.
  /// [snapshot] The snapshot.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  const ImageDataDiskResponse({
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
      'caching': ?caching,
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParametersResponse, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'diskSizeGB': ?diskSizeGB,
      'lun': lun,
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ImageDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return ImageDataDiskResponse(
      blobUri: (() { final guardedValue = map['blobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
