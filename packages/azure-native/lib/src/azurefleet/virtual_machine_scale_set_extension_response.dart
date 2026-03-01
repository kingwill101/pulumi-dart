// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_scale_set_extension_properties_response.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtensionResponse {
  /// Resource Id
  final String id;
  /// The name of the extension.
  final String? name;
  /// Describes the properties of a Virtual Machine Scale Set Extension.
  final VirtualMachineScaleSetExtensionPropertiesResponse? properties;
  /// Resource type
  final String type;

  /// Creates a new [VirtualMachineScaleSetExtensionResponse].
  /// [id] Resource Id
  /// [name] The name of the extension.
  /// [properties] Describes the properties of a Virtual Machine Scale Set Extension.
  /// [type] Resource type
  VirtualMachineScaleSetExtensionResponse({
    required this.id,
    this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'type': type,
    };
  }

  factory VirtualMachineScaleSetExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionResponse(
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetExtensionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

