// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DynamicSchema Properties
class DynamicSchemaPropertiesResponse {
  /// Type of configuration model
  final pulumi.Input<String> configurationModel;
  /// Type of configuration
  final pulumi.Input<String> configurationType;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;

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
      configurationModel: pulumi.Input.fromValue(map['configurationModel'] as String),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

