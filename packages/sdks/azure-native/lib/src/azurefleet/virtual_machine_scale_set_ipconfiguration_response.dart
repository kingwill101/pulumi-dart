// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_scale_set_ipconfiguration_properties_response.dart';

/// Describes a virtual machine scale set network profile's IP configuration.
class VirtualMachineScaleSetIPConfigurationResponse {
  /// The IP configuration name.
  final String name;
  /// Describes a virtual machine scale set network profile's IP configuration
  /// properties.
  final VirtualMachineScaleSetIPConfigurationPropertiesResponse? properties;

  /// Creates a new [VirtualMachineScaleSetIPConfigurationResponse].
  /// [name] The IP configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration
  VirtualMachineScaleSetIPConfigurationResponse({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualMachineScaleSetIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIPConfigurationResponse(
      name: map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetIPConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

