// ignore_for_file: unused_element, unnecessary_cast

import 'storage_account_type.dart';
import 'vmdisk_security_profile.dart';

class ManagedDisk {
  /// Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  final VMDiskSecurityProfile? securityProfile;
  /// The storage account type for use in creating data disks or OS disk.
  final StorageAccountType? storageAccountType;

  /// Creates a new [ManagedDisk].
  /// [securityProfile] Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  /// [storageAccountType] The storage account type for use in creating data disks or OS disk.
  ManagedDisk({
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'storageAccountType': ?storageAccountType == null ? null : storageAccountType!.value,
    };
  }

  factory ManagedDisk.fromMap(Map<String, dynamic> map) {
    return ManagedDisk(
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountType: map['storageAccountType'] == null ? null : StorageAccountType.fromValue(map['storageAccountType'] as String),
    );
  }
}

