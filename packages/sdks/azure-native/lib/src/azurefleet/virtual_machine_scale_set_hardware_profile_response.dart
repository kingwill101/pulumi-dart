// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmsize_properties_response.dart';

/// Specifies the hardware settings for the virtual machine scale set.
class VirtualMachineScaleSetHardwareProfileResponse {
  /// Specifies the properties for customizing the size of the virtual machine.
  /// Minimum api-version: 2021-11-01. Please follow the instructions in [VM
  /// Customization](https://aka.ms/vmcustomization) for more details.
  final pulumi.Input<VMSizePropertiesResponse>? vmSizeProperties;

  /// Creates a new [VirtualMachineScaleSetHardwareProfileResponse].
  /// [vmSizeProperties] Specifies the properties for customizing the size of the virtual machine.
  VirtualMachineScaleSetHardwareProfileResponse({
    this.vmSizeProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSizeProperties': ?pulumi.Input.mapOptionalInputValue<VMSizePropertiesResponse, Map<String, dynamic>>(vmSizeProperties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetHardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetHardwareProfileResponse(
      vmSizeProperties: (() { final guardedValue = map['vmSizeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMSizePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

