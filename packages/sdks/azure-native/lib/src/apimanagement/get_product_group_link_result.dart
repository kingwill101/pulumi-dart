// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProductGroupLink.
class GetProductGroupLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Full resource Id of a group.
  final String groupId;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetProductGroupLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupId] Full resource Id of a group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetProductGroupLinkResult({
    required this.azureApiVersion,
    required this.groupId,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupId': groupId,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetProductGroupLinkResult.fromMap(Map<String, dynamic> map) {
    return GetProductGroupLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
