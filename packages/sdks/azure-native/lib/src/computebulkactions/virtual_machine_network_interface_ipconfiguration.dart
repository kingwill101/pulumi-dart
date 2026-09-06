// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_network_interface_ipconfiguration_properties.dart';

/// Describes a virtual machine network profile's IP configuration.
class VirtualMachineNetworkInterfaceIPConfiguration {
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine network interface IP configuration properties.
  final pulumi.Input<VirtualMachineNetworkInterfaceIPConfigurationProperties?>? properties;

  /// Creates a new [VirtualMachineNetworkInterfaceIPConfiguration].
  /// [name] The IP configuration name.
  /// [properties] Describes a virtual machine network interface IP configuration properties.
  const VirtualMachineNetworkInterfaceIPConfiguration({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineNetworkInterfaceIPConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineNetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceIPConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineNetworkInterfaceIPConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
