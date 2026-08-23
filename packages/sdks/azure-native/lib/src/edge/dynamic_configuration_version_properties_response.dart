// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Configuration Properties
class DynamicConfigurationVersionPropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Schema Id for configuration
  final pulumi.Input<String> schemaId;
  /// Values of configuration version
  final pulumi.Input<String> values;

  /// Creates a new [DynamicConfigurationVersionPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [schemaId] Schema Id for configuration
  /// [values] Values of configuration version
  const DynamicConfigurationVersionPropertiesResponse({
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
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
      values: pulumi.Input.fromValue(map['values'] as String),
    );
  }
}
