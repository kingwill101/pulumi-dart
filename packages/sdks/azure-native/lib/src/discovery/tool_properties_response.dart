// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovery Tool list item properties
class ToolPropertiesResponse {
  /// The JSON content for defining a resource
  final pulumi.Input<dynamic> definitionContent;
  /// Environment variables to make available
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The version of a resource definition
  final pulumi.Input<String> version;

  /// Creates a new [ToolPropertiesResponse].
  /// [definitionContent] The JSON content for defining a resource
  /// [environmentVariables] Environment variables to make available
  /// [provisioningState] The status of the last operation.
  /// [version] The version of a resource definition
  const ToolPropertiesResponse({
    required this.definitionContent,
    this.environmentVariables,
    required this.provisioningState,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionContent': definitionContent,
      'environmentVariables': ?environmentVariables,
      'provisioningState': provisioningState,
      'version': version,
    };
  }

  factory ToolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ToolPropertiesResponse(
      definitionContent: pulumi.Input.fromValue(map['definitionContent']),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
