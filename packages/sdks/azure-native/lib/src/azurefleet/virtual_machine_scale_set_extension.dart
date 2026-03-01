// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_scale_set_extension_properties.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtension {
  /// The name of the extension.
  final String? name;
  /// Describes the properties of a Virtual Machine Scale Set Extension.
  final VirtualMachineScaleSetExtensionProperties? properties;

  /// Creates a new [VirtualMachineScaleSetExtension].
  /// [name] The name of the extension.
  /// [properties] Describes the properties of a Virtual Machine Scale Set Extension.
  VirtualMachineScaleSetExtension({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtension(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetExtensionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

