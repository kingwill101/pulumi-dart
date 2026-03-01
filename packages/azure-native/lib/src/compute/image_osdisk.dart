// ignore_for_file: unused_element, unnecessary_cast

import 'caching_types.dart';
import 'disk_encryption_set_parameters.dart';
import 'operating_system_state_types.dart';
import 'operating_system_types.dart';
import 'sub_resource.dart';

/// Describes an Operating System disk.
class ImageOSDisk {
  /// The Virtual Hard Disk.
  final String? blobUri;
  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final CachingTypes? caching;
  /// Specifies the customer managed disk encryption set resource id for the managed image disk.
  final DiskEncryptionSetParameters? diskEncryptionSet;
  /// Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  final int? diskSizeGB;
  /// The managedDisk.
  final SubResource? managedDisk;
  /// The OS State. For managed images, use Generalized.
  final OperatingSystemStateTypes osState;
  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from a custom image. Possible values are: **Windows,** **Linux.**
  final OperatingSystemTypes osType;
  /// The snapshot.
  final SubResource? snapshot;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final String? storageAccountType;

  /// Creates a new [ImageOSDisk].
  /// [blobUri] The Virtual Hard Disk.
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed image disk.
  /// [diskSizeGB] Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  /// [managedDisk] The managedDisk.
  /// [osState] The OS State. For managed images, use Generalized.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from a custom image. Possible values are: **Windows,** **Linux.**
  /// [snapshot] The snapshot.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  ImageOSDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSet,
    this.diskSizeGB,
    this.managedDisk,
    required this.osState,
    required this.osType,
    this.snapshot,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'caching': ?caching == null ? null : caching!.value,
      'diskEncryptionSet': ?diskEncryptionSet == null ? null : diskEncryptionSet!.toMap(),
      'diskSizeGB': ?diskSizeGB,
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'osState': osState.value,
      'osType': osType.value,
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ImageOSDisk.fromMap(Map<String, dynamic> map) {
    return ImageOSDisk(
      blobUri: map['blobUri'] == null ? null : map['blobUri'] as String,
      caching: map['caching'] == null ? null : CachingTypes.fromValue(map['caching'] as String),
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParameters.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      managedDisk: map['managedDisk'] == null ? null : SubResource.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      osState: OperatingSystemStateTypes.fromValue(map['osState'] as String),
      osType: OperatingSystemTypes.fromValue(map['osType'] as String),
      snapshot: map['snapshot'] == null ? null : SubResource.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

