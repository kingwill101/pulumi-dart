// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The protection policy of a virtual machine scale set VM.
class VirtualMachineScaleSetVMProtectionPolicyResponse {
  /// Indicates that the virtual machine scale set VM shouldn't be considered for deletion during a scale-in operation.
  final pulumi.Input<bool>? protectFromScaleIn;

  /// Indicates that model updates or actions (including scale-in) initiated on the virtual machine scale set should not be applied to the virtual machine scale set VM.
  final pulumi.Input<bool>? protectFromScaleSetActions;

  /// Creates a new [VirtualMachineScaleSetVMProtectionPolicyResponse].
  /// [protectFromScaleIn] Indicates that the virtual machine scale set VM shouldn't be considered for deletion during a scale-in operation.
  /// [protectFromScaleSetActions] Indicates that model updates or actions (including scale-in) initiated on the virtual machine scale set should not be applied to the virtual machine scale set VM.
  VirtualMachineScaleSetVMProtectionPolicyResponse({
    this.protectFromScaleIn,
    this.protectFromScaleSetActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protectFromScaleIn': ?protectFromScaleIn,
      'protectFromScaleSetActions': ?protectFromScaleSetActions,
    };
  }

  factory VirtualMachineScaleSetVMProtectionPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineScaleSetVMProtectionPolicyResponse(
      protectFromScaleIn: (() {
        final guardedValue = map['protectFromScaleIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      protectFromScaleSetActions: (() {
        final guardedValue = map['protectFromScaleSetActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
