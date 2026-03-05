// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmdisk_security_profile_response.dart';

class ManagedDiskResponse {
  /// Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  final pulumi.Input<VMDiskSecurityProfileResponse>? securityProfile;
  /// The storage account type for use in creating data disks or OS disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [ManagedDiskResponse].
  /// [securityProfile] Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
  /// [storageAccountType] The storage account type for use in creating data disks or OS disk.
  ManagedDiskResponse({
    this.securityProfile,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ManagedDiskResponse.fromMap(Map<String, dynamic> map) {
    return ManagedDiskResponse(
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

