// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_network_interface_ipconfiguration_properties_response.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfigurationResponse {
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine network interface IP configuration properties.
  final pulumi.Input<VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse>? properties;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfigurationResponse].
  /// [name] The IP configuration name.
  /// [properties] Describes a virtual machine network interface IP configuration properties.
  const VirtualMachineNetworkInterfaceIPConfigurationResponse({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfigurationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineNetworkInterfaceIPConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
