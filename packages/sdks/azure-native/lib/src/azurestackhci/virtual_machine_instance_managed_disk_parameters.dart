// ignore_for_file: unused_element, unnecessary_cast

import 'vmdisk_security_profile.dart';

/// The parameters of a managed disk.
class VirtualMachineInstanceManagedDiskParameters {
  /// Specifies the security profile for the managed disk.
  final VMDiskSecurityProfile? securityProfile;

  /// Creates a new [VirtualMachineInstanceManagedDiskParameters].
  /// [securityProfile] Specifies the security profile for the managed disk.
  VirtualMachineInstanceManagedDiskParameters({
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
    };
  }

  factory VirtualMachineInstanceManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceManagedDiskParameters(
      securityProfile: map['securityProfile'] == null ? null : VMDiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

