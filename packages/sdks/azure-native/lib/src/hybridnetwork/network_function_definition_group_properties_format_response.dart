// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network function definition group properties.
class NetworkFunctionDefinitionGroupPropertiesFormatResponse {
  /// The network function definition group description.
  final pulumi.Input<String>? description;
  /// The provisioning state of the network function definition groups resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [NetworkFunctionDefinitionGroupPropertiesFormatResponse].
  /// [description] The network function definition group description.
  /// [provisioningState] The provisioning state of the network function definition groups resource.
  const NetworkFunctionDefinitionGroupPropertiesFormatResponse({
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory NetworkFunctionDefinitionGroupPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionDefinitionGroupPropertiesFormatResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

