// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter {
  /// Resource path to match in the REST API. Supports exact paths (for example, `/pets`) or wildcard paths (for example, `/pets/*` to match all paths under `/pets`). Must match existing paths in the REST API.
  final pulumi.Input<String> filterPath;
  /// List of HTTP methods to filter for. Valid values: `GET`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`, `PUT` and `POST`.
  final pulumi.Input<List<String>> methods;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter].
  /// [filterPath] Resource path to match in the REST API. Supports exact paths (for example, `/pets`) or wildcard paths (for example, `/pets/*` to match all paths under `/pets`). Must match existing paths in the REST API.
  /// [methods] List of HTTP methods to filter for. Valid values: `GET`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`, `PUT` and `POST`.
  const AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter({
    required this.filterPath,
    required this.methods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterPath': filterPath,
      'methods': methods,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpApiGatewayApiGatewayToolConfigurationToolFilter(
      filterPath: pulumi.Input.fromValue(map['filterPath'] as String),
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
    );
  }
}
