// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceTagOperationLink.
class GetWorkspaceTagOperationLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Full resource Id of an API operation.
  final String operationId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceTagOperationLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [operationId] Full resource Id of an API operation.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceTagOperationLinkResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.operationId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'operationId': operationId,
      'type': type,
    };
  }

  factory GetWorkspaceTagOperationLinkResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagOperationLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      operationId: map['operationId'] as String,
      type: map['type'] as String,
    );
  }
}

