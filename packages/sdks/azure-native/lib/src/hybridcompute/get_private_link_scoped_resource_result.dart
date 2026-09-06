// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateLinkScopedResource.
class GetPrivateLinkScopedResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The resource id of the scoped Azure monitor resource.
  final String? linkedResourceId;
  /// The name of the resource
  final String? name;
  /// State of the private endpoint connection.
  final String? provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPrivateLinkScopedResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the resource
  /// [provisioningState] State of the private endpoint connection.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPrivateLinkScopedResourceResult({
    this.azureApiVersion,
    this.id,
    this.linkedResourceId,
    this.name,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'linkedResourceId': ?linkedResourceId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory GetPrivateLinkScopedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopedResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedResourceId: (() { final guardedValue = map['linkedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
