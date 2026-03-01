// ignore_for_file: unused_element, unnecessary_cast


/// Network function definition group properties.
class NetworkFunctionDefinitionGroupPropertiesFormatResponse {
  /// The network function definition group description.
  final String? description;
  /// The provisioning state of the network function definition groups resource.
  final String provisioningState;

  /// Creates a new [NetworkFunctionDefinitionGroupPropertiesFormatResponse].
  /// [description] The network function definition group description.
  /// [provisioningState] The provisioning state of the network function definition groups resource.
  NetworkFunctionDefinitionGroupPropertiesFormatResponse({
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
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

