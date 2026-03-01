// ignore_for_file: unused_element, unnecessary_cast

import 'vmdisk_security_profile_response.dart';

/// The parameters of a managed disk.
class VirtualMachineInstanceManagedDiskParametersResponse {
  /// Specifies the security profile for the managed disk.
  final VMDiskSecurityProfileResponse? securityProfile;

  /// Creates a new [VirtualMachineInstanceManagedDiskParametersResponse].
  /// [securityProfile] Specifies the security profile for the managed disk.
  VirtualMachineInstanceManagedDiskParametersResponse({
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
    };
  }

  factory VirtualMachineInstanceManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceManagedDiskParametersResponse(
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

