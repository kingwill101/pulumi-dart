// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceProductGroupLink.
class GetWorkspaceProductGroupLinkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Full resource Id of a group.
  final String? groupId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceProductGroupLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupId] Full resource Id of a group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceProductGroupLinkResult({
    this.azureApiVersion,
    this.groupId,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetWorkspaceProductGroupLinkResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceProductGroupLinkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
