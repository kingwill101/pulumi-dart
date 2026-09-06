// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmdisk_security_profile.dart';

/// The parameters of a managed disk.
class VirtualMachineInstanceManagedDiskParameters {
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfile?>? securityProfile;

  /// Creates a new [VirtualMachineInstanceManagedDiskParameters].
  /// [securityProfile] Specifies the security profile for the managed disk.
  const VirtualMachineInstanceManagedDiskParameters({
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceManagedDiskParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceManagedDiskParameters(
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
