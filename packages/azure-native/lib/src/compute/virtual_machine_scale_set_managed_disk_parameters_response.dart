// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// Describes the parameters of a ScaleSet managed disk.
class VirtualMachineScaleSetManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final DiskEncryptionSetParametersResponse? diskEncryptionSet;
  /// Specifies the security profile for the managed disk.
  final VMDiskSecurityProfileResponse? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final String? storageAccountType;

  /// Creates a new [VirtualMachineScaleSetManagedDiskParametersResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk.
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  VirtualMachineScaleSetManagedDiskParametersResponse({
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

  factory VirtualMachineScaleSetManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetManagedDiskParametersResponse(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

