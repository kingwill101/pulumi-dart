// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension_properties_response.dart';

/// Describes a Virtual Machine Scale Set Extension.
class VirtualMachineScaleSetExtensionResponse {
  /// Resource Id
  final pulumi.Input<String> id;
  /// The name of the extension.
  final pulumi.Input<String>? name;
  /// Describes the properties of a Virtual Machine Scale Set Extension.
  final pulumi.Input<VirtualMachineScaleSetExtensionPropertiesResponse>? properties;
  /// Resource type
  final pulumi.Input<String> type;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetExtensionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory VirtualMachineScaleSetExtensionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionResponse(
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (VirtualMachineScaleSetExtensionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

