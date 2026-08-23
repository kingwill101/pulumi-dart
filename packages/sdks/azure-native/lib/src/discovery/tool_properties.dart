// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovery Tool list item properties
class ToolProperties {
  /// The JSON content for defining a resource
  final pulumi.Input<dynamic> definitionContent;
  /// Environment variables to make available
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The version of a resource definition
  final pulumi.Input<String> version;

  /// Creates a new [ToolProperties].
  /// [definitionContent] The JSON content for defining a resource
  /// [environmentVariables] Environment variables to make available
  /// [version] The version of a resource definition
  const ToolProperties({
    required this.definitionContent,
    this.environmentVariables,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionContent': definitionContent,
      'environmentVariables': ?environmentVariables,
      'version': version,
    };
  }

  factory ToolProperties.fromMap(Map<String, dynamic> map) {
    return ToolProperties(
      definitionContent: pulumi.Input.fromValue(map['definitionContent']),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
