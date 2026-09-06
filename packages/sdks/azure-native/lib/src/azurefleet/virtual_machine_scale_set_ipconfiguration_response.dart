// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_ipconfiguration_properties_response.dart';

/// Describes a virtual machine scale set network profile's IP configuration.
class VirtualMachineScaleSetIPConfigurationResponse {
  /// The IP configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machine scale set network profile's IP configuration
  /// properties.
  final pulumi.Input<VirtualMachineScaleSetIPConfigurationPropertiesResponse?>? properties;

  /// Creates a new [VirtualMachineScaleSetIPConfigurationResponse].
  /// [name] The IP configuration name.
  /// [properties] Describes a virtual machine scale set network profile's IP configuration
  const VirtualMachineScaleSetIPConfigurationResponse({
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetIPConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIPConfigurationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetIPConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
