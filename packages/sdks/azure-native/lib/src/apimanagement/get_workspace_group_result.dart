// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceGroup.
class GetWorkspaceGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  final bool builtIn;
  /// Group description. Can contain HTML formatting tags.
  final String? description;
  /// Group name.
  final String displayName;
  /// For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  final String? externalId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [builtIn] true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  /// [description] Group description. Can contain HTML formatting tags.
  /// [displayName] Group name.
  /// [externalId] For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceGroupResult({
    required this.azureApiVersion,
    required this.builtIn,
    this.description,
    required this.displayName,
    this.externalId,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'builtIn': builtIn,
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetWorkspaceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      builtIn: map['builtIn'] as bool,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      externalId: map['externalId'] == null ? null : map['externalId']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

