// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceTagApiLink.
class GetWorkspaceTagApiLinkResult {
  /// Full resource Id of an API.
  final String apiId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceTagApiLinkResult].
  /// [apiId] Full resource Id of an API.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceTagApiLinkResult({
    required this.apiId,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetWorkspaceTagApiLinkResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagApiLinkResult(
      apiId: map['apiId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

