// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_tool_args_doc}
/// The set of arguments for ApiTool.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_tool_args_doc}
class ApiToolArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Description of the tool.
  final pulumi.Input<String>? description;
  /// Tool Name. MCP tool name must contain only letters, numbers, underscores, and hyphens.
  final pulumi.Input<String>? displayName;
  /// Identifier of the operation this MCP tool is associated with in the form of /apis/{apiId}/operations/{operationId}.
  final pulumi.Input<String>? operationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tool identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? toolId;

  /// Creates a new [ApiToolArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [description] Description of the tool.
  /// [displayName] Tool Name. MCP tool name must contain only letters, numbers, underscores, and hyphens.
  /// [operationId] Identifier of the operation this MCP tool is associated with in the form of /apis/{apiId}/operations/{operationId}.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [toolId] Tool identifier within an API. Must be unique in the current API Management service instance.
  ApiToolArgs({
    required this.apiId,
    this.description,
    this.displayName,
    this.operationId,
    required this.resourceGroupName,
    required this.serviceName,
    this.toolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'displayName': ?displayName,
      'operationId': ?operationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'toolId': ?toolId,
    };
  }

  factory ApiToolArgs.fromMap(Map<String, dynamic> map) {
    return ApiToolArgs(
      apiId: (map['apiId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      operationId: map['operationId'] == null ? null : (map['operationId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      toolId: map['toolId'] == null ? null : (map['toolId']! as String).input(),
    );
  }
}

