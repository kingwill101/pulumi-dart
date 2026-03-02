// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmdisk_security_profile.dart';

/// The parameters of a managed disk.
class VirtualMachineInstanceManagedDiskParameters {
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfile>? securityProfile;

  /// Creates a new [VirtualMachineInstanceManagedDiskParameters].
  /// [securityProfile] Specifies the security profile for the managed disk.
  VirtualMachineInstanceManagedDiskParameters({
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceManagedDiskParameters(
      securityProfile: map['securityProfile'] == null ? null : (VMDiskSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

