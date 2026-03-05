// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_ipconfiguration_properties.dart';

/// Describes a virtual machine scale set network profile's IP configuration.
class VirtualMachineScaleSetIPConfiguration {
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine scale set network profile's IP configuration
  /// properties.
  final pulumi.Input<VirtualMachineScaleSetIPConfigurationProperties>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetIPConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIPConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetIPConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

