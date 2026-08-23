// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateLinkScopedResource.
class GetPrivateLinkScopedResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The resource id of the scoped Azure monitor resource.
  final String? linkedResourceId;
  /// The name of the resource
  final String name;
  /// State of the private endpoint connection.
  final String provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateLinkScopedResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the resource
  /// [provisioningState] State of the private endpoint connection.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPrivateLinkScopedResourceResult({
    required this.azureApiVersion,
    required this.id,
    this.linkedResourceId,
    required this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'linkedResourceId': ?linkedResourceId,
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetPrivateLinkScopedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopedResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      linkedResourceId: (() { final guardedValue = map['linkedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
