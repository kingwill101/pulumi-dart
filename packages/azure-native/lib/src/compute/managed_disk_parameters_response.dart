// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_set_parameters_response.dart';
import 'vmdisk_security_profile_response.dart';

/// The parameters of a managed disk.
class ManagedDiskParametersResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed disk.
  final DiskEncryptionSetParametersResponse? diskEncryptionSet;
  /// Resource Id
  final String? id;
  /// Specifies the security profile for the managed disk.
  final VMDiskSecurityProfileResponse? securityProfile;
  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final String? storageAccountType;

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
      'diskEncryptionSet': ?diskEncryptionSet == null ? null : diskEncryptionSet!.toMap(),
      'id': ?id,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return ManagedDiskParametersResponse(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

