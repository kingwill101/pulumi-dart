// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRoleAssignmentArtifact.
class GetRoleAssignmentArtifactResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Artifacts which need to be deployed before the specified artifact.
  final List<String>? dependsOn;

  /// Multi-line explain this resource.
  final String? description;

  /// One-liner string explain this resource.
  final String? displayName;

  /// String Id used to locate any resource on Azure.
  final String id;

  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'roleAssignment'.
  final String kind;

  /// Name of this resource.
  final String name;

  /// Array of user or group identities in Azure Active Directory. The roleDefinition will apply to each identity.
  final dynamic principalIds;

  /// RoleAssignment will be scope to this resourceGroup. If empty, it scopes to the subscription.
  final String? resourceGroup;

  /// Azure resource ID of the RoleDefinition.
  final String roleDefinitionId;

  /// Type of this resource.
  final String type;

  /// Creates a new [GetRoleAssignmentArtifactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [name] Name of this resource.
  /// [principalIds] Array of user or group identities in Azure Active Directory. The roleDefinition will apply to each identity.
  /// [resourceGroup] RoleAssignment will be scope to this resourceGroup. If empty, it scopes to the subscription.
  /// [roleDefinitionId] Azure resource ID of the RoleDefinition.
  /// [type] Type of this resource.
  GetRoleAssignmentArtifactResult({
    required this.azureApiVersion,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.id,
    required this.kind,
    required this.name,
    required this.principalIds,
    this.resourceGroup,
    required this.roleDefinitionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'kind': kind,
      'name': name,
      'principalIds': principalIds,
      'resourceGroup': ?resourceGroup,
      'roleDefinitionId': roleDefinitionId,
      'type': type,
    };
  }

  factory GetRoleAssignmentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArtifactResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      principalIds: map['principalIds'],
      resourceGroup: (() {
        final guardedValue = map['resourceGroup'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      roleDefinitionId: map['roleDefinitionId'] as String,
      type: map['type'] as String,
    );
  }
}
