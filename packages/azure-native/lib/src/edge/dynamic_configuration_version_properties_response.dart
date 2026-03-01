// ignore_for_file: unused_element, unnecessary_cast


/// Dynamic Configuration Properties
class DynamicConfigurationVersionPropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;
  /// Schema Id for configuration
  final String schemaId;
  /// Values of configuration version
  final String values;

  /// Creates a new [DynamicConfigurationVersionPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [schemaId] Schema Id for configuration
  /// [values] Values of configuration version
  DynamicConfigurationVersionPropertiesResponse({
    required this.provisioningState,
    required this.schemaId,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'schemaId': schemaId,
      'values': values,
    };
  }

  factory DynamicConfigurationVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationVersionPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      schemaId: map['schemaId'] as String,
      values: map['values'] as String,
    );
  }
}

