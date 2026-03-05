// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspaceTag.
class GetWorkspaceTagResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Tag name.
  final String displayName;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceTagResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Tag name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceTagResult({
    required this.azureApiVersion,
    required this.displayName,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': displayName,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetWorkspaceTagResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
