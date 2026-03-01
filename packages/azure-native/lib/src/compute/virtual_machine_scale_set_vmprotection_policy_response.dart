// ignore_for_file: unused_element, unnecessary_cast


/// The protection policy of a virtual machine scale set VM.
class VirtualMachineScaleSetVMProtectionPolicyResponse {
  /// Indicates that the virtual machine scale set VM shouldn't be considered for deletion during a scale-in operation.
  final bool? protectFromScaleIn;
  /// Indicates that model updates or actions (including scale-in) initiated on the virtual machine scale set should not be applied to the virtual machine scale set VM.
  final bool? protectFromScaleSetActions;

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

  factory VirtualMachineScaleSetVMProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMProtectionPolicyResponse(
      protectFromScaleIn: map['protectFromScaleIn'] == null ? null : map['protectFromScaleIn'] as bool,
      protectFromScaleSetActions: map['protectFromScaleSetActions'] == null ? null : map['protectFromScaleSetActions'] as bool,
    );
  }
}

