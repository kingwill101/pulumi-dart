// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_extension_properties_response.dart';

/// Defines a virtual machine extension.
class VirtualMachineExtensionResponse {
  /// The name of the virtual machine extension.
  final pulumi.Input<String> name;
  /// Properties of the virtual machine extension.
  final pulumi.Input<VirtualMachineExtensionPropertiesResponse> properties;

  /// Creates a new [VirtualMachineExtensionResponse].
  /// [name] The name of the virtual machine extension.
  /// [properties] Properties of the virtual machine extension.
  const VirtualMachineExtensionResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<VirtualMachineExtensionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualMachineExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(VirtualMachineExtensionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
