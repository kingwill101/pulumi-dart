// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_type.dart';
import 'vmdisk_security_profile.dart';

/// The managed disk parameters.
class ManagedDisk {
  /// Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  final pulumi.Input<VMDiskSecurityProfile>? securityProfile;
  /// The storage account type for use in creating data disks or OS disk.
  final pulumi.Input<StorageAccountType>? storageAccountType;

  /// Creates a new [ManagedDisk].
  /// [securityProfile] Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  /// [storageAccountType] The storage account type for use in creating data disks or OS disk.
  const ManagedDisk({
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?pulumi.Input.mapOptionalInputValue<StorageAccountType, String>(storageAccountType, (value) => value.wireValue),
    };
  }

  factory ManagedDisk.fromMap(Map<String, dynamic> map) {
    return ManagedDisk(
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccountType.fromValue(guardedValue as String)); })(),
    );
  }
}
