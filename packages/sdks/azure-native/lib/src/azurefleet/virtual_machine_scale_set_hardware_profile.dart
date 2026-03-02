// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmsize_properties.dart';

/// Specifies the hardware settings for the virtual machine scale set.
class VirtualMachineScaleSetHardwareProfile {
  /// Specifies the properties for customizing the size of the virtual machine.
  /// Minimum api-version: 2021-11-01. Please follow the instructions in [VM
  /// Customization](https://aka.ms/vmcustomization) for more details.
  final pulumi.Input<VMSizeProperties>? vmSizeProperties;

  /// Creates a new [VirtualMachineScaleSetHardwareProfile].
  /// [vmSizeProperties] Specifies the properties for customizing the size of the virtual machine.
  VirtualMachineScaleSetHardwareProfile({
    this.vmSizeProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSizeProperties': ?pulumi.Input.mapOptionalInputValue<VMSizeProperties, Map<String, dynamic>>(vmSizeProperties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetHardwareProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetHardwareProfile(
      vmSizeProperties: map['vmSizeProperties'] == null ? null : (VMSizeProperties.fromMap((map['vmSizeProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

