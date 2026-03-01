// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_scale_set_ipconfiguration_properties.dart';

/// Describes a virtual machine scale set network profile's IP configuration.
class VirtualMachineScaleSetIPConfiguration {
  /// The IP configuration name.
  final String name;
  /// Describes a virtual machine scale set network profile's IP configuration
  /// properties.
  final VirtualMachineScaleSetIPConfigurationProperties? properties;

  /// Creates a new [VirtualMachineScaleSetIPConfiguration].
  /// [name] The IP configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration
  VirtualMachineScaleSetIPConfiguration({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualMachineScaleSetIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIPConfiguration(
      name: map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetIPConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

