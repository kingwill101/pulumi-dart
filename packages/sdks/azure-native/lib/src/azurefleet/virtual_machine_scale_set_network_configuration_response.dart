// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_network_configuration_properties_response.dart';

/// Describes a virtual machine scale set network profile's network configurations.
class VirtualMachineScaleSetNetworkConfigurationResponse {
  /// The network configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine scale set network profile's IP configuration.
  final pulumi.Input<VirtualMachineScaleSetNetworkConfigurationPropertiesResponse>? properties;

  /// Creates a new [VirtualMachineScaleSetNetworkConfigurationResponse].
  /// [name] The network configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration.
  const VirtualMachineScaleSetNetworkConfigurationResponse({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetNetworkConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfigurationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetNetworkConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

