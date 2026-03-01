// ignore_for_file: unused_element, unnecessary_cast

import 'vmdisk_security_profile_response.dart';

class ManagedDiskResponse {
  /// Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  final VMDiskSecurityProfileResponse? securityProfile;
  /// The storage account type for use in creating data disks or OS disk.
  final String? storageAccountType;

  /// Creates a new [ManagedDiskResponse].
  /// [securityProfile] Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  /// [storageAccountType] The storage account type for use in creating data disks or OS disk.
  ManagedDiskResponse({
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDiskResponse.fromMap(Map<String, dynamic> map) {
    return ManagedDiskResponse(
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

