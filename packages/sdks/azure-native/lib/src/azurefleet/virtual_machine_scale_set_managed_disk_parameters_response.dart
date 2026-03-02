// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// Describes the parameters of a ScaleSet managed disk.
class VirtualMachineScaleSetManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed
  /// disk.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfileResponse>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can
  /// only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [VirtualMachineScaleSetManagedDiskParametersResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can
  VirtualMachineScaleSetManagedDiskParametersResponse({
    this.diskEncryptionSet,
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParametersResponse, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory VirtualMachineScaleSetManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetManagedDiskParametersResponse(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : (DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
    );
  }
}

