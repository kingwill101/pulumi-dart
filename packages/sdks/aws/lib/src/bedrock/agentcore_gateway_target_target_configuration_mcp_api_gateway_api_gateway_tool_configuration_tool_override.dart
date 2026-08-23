// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride {
  /// Description of the tool. Provides information about the purpose and usage of the tool. If not provided, uses the description from the API's OpenAPI specification.
  final pulumi.Input<String>? description;
  /// HTTP method to expose for the specified path. Valid values: `GET`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`, `PUT` and `POST`.
  final pulumi.Input<String> method;
  /// Name of tool. Identifies the tool in the Model Context Protocol.
  final pulumi.Input<String> name;
  /// Resource path in the REST API (e.g., `/pets`). Must explicitly match an existing path in the REST API.
  final pulumi.Input<String> path;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride].
  /// [description] Description of the tool. Provides information about the purpose and usage of the tool. If not provided, uses the description from the API's OpenAPI specification.
  /// [method] HTTP method to expose for the specified path. Valid values: `GET`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`, `PUT` and `POST`.
  /// [name] Name of tool. Identifies the tool in the Model Context Protocol.
  /// [path] Resource path in the REST API (e.g., `/pets`). Must explicitly match an existing path in the REST API.
  const AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride({
    this.description,
    required this.method,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'method': method,
      'name': name,
      'path': path,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolOverride(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
