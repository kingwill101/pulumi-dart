// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizationAccessPolicy.
class GetAuthorizationAccessPolicyResult {
  /// The allowed Azure Active Directory Application IDs
  final List<String>? appIds;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The Object Id
  final String? objectId;
  /// The Tenant Id
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAuthorizationAccessPolicyResult].
  /// [appIds] The allowed Azure Active Directory Application IDs
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [objectId] The Object Id
  /// [tenantId] The Tenant Id
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAuthorizationAccessPolicyResult({
    this.appIds,
    this.azureApiVersion,
    this.id,
    this.name,
    this.objectId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIds': ?appIds,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetAuthorizationAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationAccessPolicyResult(
      appIds: (() { final guardedValue = map['appIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
