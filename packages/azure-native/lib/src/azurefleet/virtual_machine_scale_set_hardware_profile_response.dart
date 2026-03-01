// ignore_for_file: unused_element, unnecessary_cast

import 'vmsize_properties_response.dart';

/// Specifies the hardware settings for the virtual machine scale set.
class VirtualMachineScaleSetHardwareProfileResponse {
  /// Specifies the properties for customizing the size of the virtual machine.
  /// Minimum api-version: 2021-11-01. Please follow the instructions in [VM
  /// Customization](https://aka.ms/vmcustomization) for more details.
  final VMSizePropertiesResponse? vmSizeProperties;

  /// Creates a new [VirtualMachineScaleSetHardwareProfileResponse].
  /// [vmSizeProperties] Specifies the properties for customizing the size of the virtual machine.
  VirtualMachineScaleSetHardwareProfileResponse({
    this.vmSizeProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSizeProperties': ?vmSizeProperties == null ? null : vmSizeProperties!.toMap(),
    };
  }

  factory VirtualMachineScaleSetHardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetHardwareProfileResponse(
      vmSizeProperties: map['vmSizeProperties'] == null ? null : VMSizePropertiesResponse.fromMap((map['vmSizeProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

