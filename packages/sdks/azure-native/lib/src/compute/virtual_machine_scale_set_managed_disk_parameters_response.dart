// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// Describes the parameters of a ScaleSet managed disk.
class VirtualMachineScaleSetManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfileResponse>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [VirtualMachineScaleSetManagedDiskParametersResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk.
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  const VirtualMachineScaleSetManagedDiskParametersResponse({
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
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
