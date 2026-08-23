// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_extension_properties.dart';

/// Defines a virtual machine extension.
class VirtualMachineExtension {
  /// The name of the virtual machine extension.
  final pulumi.Input<String> name;
  /// Properties of the virtual machine extension.
  final pulumi.Input<VirtualMachineExtensionProperties> properties;

  /// Creates a new [VirtualMachineExtension].
  /// [name] The name of the virtual machine extension.
  /// [properties] Properties of the virtual machine extension.
  const VirtualMachineExtension({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<VirtualMachineExtensionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineExtension.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtension(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(VirtualMachineExtensionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
