// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_set_parameters.dart';
import 'vmdisk_security_profile.dart';

/// Describes the parameters of a ScaleSet managed disk.
class VirtualMachineScaleSetManagedDiskParameters {
  /// Specifies the customer managed disk encryption set resource id for the managed
  /// disk.
  final DiskEncryptionSetParameters? diskEncryptionSet;
  /// Specifies the security profile for the managed disk.
  final VMDiskSecurityProfile? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can
  /// only be used with data disks, it cannot be used with OS Disk.
  final String? storageAccountType;

  /// Creates a new [VirtualMachineScaleSetManagedDiskParameters].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can
  VirtualMachineScaleSetManagedDiskParameters({
    this.diskEncryptionSet,
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?diskEncryptionSet == null ? null : diskEncryptionSet!.toMap(),
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory VirtualMachineScaleSetManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetManagedDiskParameters(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParameters.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

