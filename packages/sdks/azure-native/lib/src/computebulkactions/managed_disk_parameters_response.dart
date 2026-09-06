// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// The parameters of a managed disk.
class ManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final pulumi.Input<DiskEncryptionSetParametersResponse?>? diskEncryptionSet;
  /// The ID of the sub-resource.
  final pulumi.Input<String?>? id;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfileResponse?>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String?>? storageAccountType;

  /// Creates a new [ManagedDiskParametersResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk.
  /// [id] The ID of the sub-resource.
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  const ManagedDiskParametersResponse({
    this.diskEncryptionSet,
    this.id,
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParametersResponse, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'id': ?id,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return ManagedDiskParametersResponse(
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
