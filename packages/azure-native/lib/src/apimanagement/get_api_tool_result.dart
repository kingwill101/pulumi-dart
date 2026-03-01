// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getApiTool.
class GetApiToolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the tool.
  final String? description;
  /// Tool Name. MCP tool name must contain only letters, numbers, underscores, and hyphens.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Identifier of the operation this MCP tool is associated with in the form of /apis/{apiId}/operations/{operationId}.
  final String? operationId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApiToolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the tool.
  /// [displayName] Tool Name. MCP tool name must contain only letters, numbers, underscores, and hyphens.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [operationId] Identifier of the operation this MCP tool is associated with in the form of /apis/{apiId}/operations/{operationId}.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApiToolResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.name,
    this.operationId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'operationId': ?operationId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetApiToolResult.fromMap(Map<String, dynamic> map) {
    return GetApiToolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

