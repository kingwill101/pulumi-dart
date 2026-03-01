// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_scale_set_network_configuration_properties_response.dart';

/// Describes a virtual machine scale set network profile's network configurations.
class VirtualMachineScaleSetNetworkConfigurationResponse {
  /// The network configuration name.
  final String name;
  /// Describes a virtual machine scale set network profile's IP configuration.
  final VirtualMachineScaleSetNetworkConfigurationPropertiesResponse? properties;

  /// Creates a new [VirtualMachineScaleSetNetworkConfigurationResponse].
  /// [name] The network configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration.
  VirtualMachineScaleSetNetworkConfigurationResponse({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualMachineScaleSetNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfigurationResponse(
      name: map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetNetworkConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

