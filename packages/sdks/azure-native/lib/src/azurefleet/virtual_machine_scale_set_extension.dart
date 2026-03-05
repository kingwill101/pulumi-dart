// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension_properties.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtension {
  /// The name of the extension.
  final pulumi.Input<String>? name;
  /// Describes the properties of a Virtual Machine Scale Set Extension.
  final pulumi.Input<VirtualMachineScaleSetExtensionProperties>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetExtensionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtension(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetExtensionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

