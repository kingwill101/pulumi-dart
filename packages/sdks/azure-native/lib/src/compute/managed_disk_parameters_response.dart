// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// The parameters of a managed disk.
class ManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfileResponse>? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [ManagedDiskParametersResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk.
  /// [id] Resource Id
  /// [securityProfile] Specifies the security profile for the managed disk.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  ManagedDiskParametersResponse({
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
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : (DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      securityProfile: map['securityProfile'] == null ? null : (VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
    );
  }
}

