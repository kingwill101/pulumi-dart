// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceGroup.
class GetWorkspaceGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  final bool? builtIn;
  /// Group description. Can contain HTML formatting tags.
  final String? description;
  /// Group name.
  final String? displayName;
  /// For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  final String? externalId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [builtIn] true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  /// [description] Group description. Can contain HTML formatting tags.
  /// [displayName] Group name.
  /// [externalId] For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceGroupResult({
    this.azureApiVersion,
    this.builtIn,
    this.description,
    this.displayName,
    this.externalId,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'builtIn': ?builtIn,
      'description': ?description,
      'displayName': ?displayName,
      'externalId': ?externalId,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetWorkspaceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      builtIn: (() { final guardedValue = map['builtIn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
