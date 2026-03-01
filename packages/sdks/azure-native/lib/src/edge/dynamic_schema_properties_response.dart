// ignore_for_file: unused_element, unnecessary_cast


/// DynamicSchema Properties
class DynamicSchemaPropertiesResponse {
  /// Type of configuration model
  final String configurationModel;
  /// Type of configuration
  final String configurationType;
  /// Provisioning state of resource
  final String provisioningState;

  /// Creates a new [DynamicSchemaPropertiesResponse].
  /// [configurationModel] Type of configuration model
  /// [configurationType] Type of configuration
  /// [provisioningState] Provisioning state of resource
  DynamicSchemaPropertiesResponse({
    required this.configurationModel,
    required this.configurationType,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationModel': configurationModel,
      'configurationType': configurationType,
      'provisioningState': provisioningState,
    };
  }

  factory DynamicSchemaPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DynamicSchemaPropertiesResponse(
      configurationModel: map['configurationModel'] as String,
      configurationType: map['configurationType'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

