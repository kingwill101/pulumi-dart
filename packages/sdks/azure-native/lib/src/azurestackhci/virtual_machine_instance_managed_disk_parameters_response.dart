// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmdisk_security_profile_response.dart';

/// The parameters of a managed disk.
class VirtualMachineInstanceManagedDiskParametersResponse {
  /// Specifies the security profile for the managed disk.
  final pulumi.Input<VMDiskSecurityProfileResponse>? securityProfile;

  /// Creates a new [VirtualMachineInstanceManagedDiskParametersResponse].
  /// [securityProfile] Specifies the security profile for the managed disk.
  const VirtualMachineInstanceManagedDiskParametersResponse({
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VMDiskSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceManagedDiskParametersResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceManagedDiskParametersResponse(
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMDiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
