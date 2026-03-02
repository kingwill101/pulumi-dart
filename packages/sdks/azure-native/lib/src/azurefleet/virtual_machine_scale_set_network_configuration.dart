// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_network_configuration_properties.dart';

/// Describes a virtual machine scale set network profile's network configurations.
class VirtualMachineScaleSetNetworkConfiguration {
  /// The network configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine scale set network profile's IP configuration.
  final pulumi.Input<VirtualMachineScaleSetNetworkConfigurationProperties>? properties;

  /// Creates a new [VirtualMachineScaleSetNetworkConfiguration].
  /// [name] The network configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration.
  VirtualMachineScaleSetNetworkConfiguration({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetNetworkConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkConfiguration(
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (VirtualMachineScaleSetNetworkConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

