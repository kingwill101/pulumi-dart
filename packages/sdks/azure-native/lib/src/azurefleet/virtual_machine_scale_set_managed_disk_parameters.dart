// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters.dart';
import 'vmdisk_security_profile.dart';

/// Describes the parameters of a ScaleSet managed disk.
class VirtualMachineScaleSetManagedDiskParameters {
  /// Specifies the customer managed disk encryption set resource id for the managed
  /// disk.
  final pulumi.Input<DiskEncryptionSetParameters>? diskEncryptionSet;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfile>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can
  /// only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

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
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParameters, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory VirtualMachineScaleSetManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetManagedDiskParameters(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : (DiskEncryptionSetParameters.fromMap((map['diskEncryptionSet']! as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (VMDiskSecurityProfile.fromMap((map['securityProfile']! as Map).cast<String, dynamic>())).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType']! as String).input(),
    );
  }
}

