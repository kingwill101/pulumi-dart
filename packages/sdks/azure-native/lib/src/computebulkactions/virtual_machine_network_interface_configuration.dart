// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_network_interface_configuration_properties.dart';

/// Describes a virtual machine network interface configurations.
class VirtualMachineNetworkInterfaceConfiguration {
  /// The network interface configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine network profile's IP configuration.
  final pulumi.Input<VirtualMachineNetworkInterfaceConfigurationProperties?>? properties;
  /// Resource tags applied to the networkInterface address created by this NetworkInterfaceConfiguration
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [VirtualMachineNetworkInterfaceConfiguration].
  /// [name] The network interface configuration name.
  /// [properties] Describes a virtual machine network profile's IP configuration.
  /// [tags] Resource tags applied to the networkInterface address created by this NetworkInterfaceConfiguration
  const VirtualMachineNetworkInterfaceConfiguration({
    required this.name,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineNetworkInterfaceConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualMachineNetworkInterfaceConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNetworkInterfaceConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineNetworkInterfaceConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
