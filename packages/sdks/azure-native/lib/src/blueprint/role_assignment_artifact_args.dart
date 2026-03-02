// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_role_assignment_artifact_args_doc}
/// The set of arguments for RoleAssignmentArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_role_assignment_artifact_args_doc}
class RoleAssignmentArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String>? artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// Artifacts which need to be deployed before the specified artifact.
  final pulumi.Input<List<String>>? dependsOn;
  /// Multi-line explain this resource.
  final pulumi.Input<String>? description;
  /// One-liner string explain this resource.
  final pulumi.Input<String>? displayName;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'roleAssignment'.
  final pulumi.Input<String> kind;
  /// Array of user or group identities in Azure Active Directory. The roleDefinition will apply to each identity.
  final pulumi.Input<dynamic> principalIds;
  /// RoleAssignment will be scope to this resourceGroup. If empty, it scopes to the subscription.
  final pulumi.Input<String>? resourceGroup;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;
  /// Azure resource ID of the RoleDefinition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [RoleAssignmentArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [principalIds] Array of user or group identities in Azure Active Directory. The roleDefinition will apply to each identity.
  /// [resourceGroup] RoleAssignment will be scope to this resourceGroup. If empty, it scopes to the subscription.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [roleDefinitionId] Azure resource ID of the RoleDefinition.
  RoleAssignmentArtifactArgs({
    this.artifactName,
    required this.blueprintName,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.kind,
    required this.principalIds,
    this.resourceGroup,
    required this.resourceScope,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'blueprintName': blueprintName,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'kind': kind,
      'principalIds': principalIds,
      'resourceGroup': ?resourceGroup,
      'resourceScope': resourceScope,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory RoleAssignmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArtifactArgs(
      artifactName: map['artifactName'] == null ? null : (map['artifactName'] as String).input(),
      blueprintName: (map['blueprintName'] as String).input(),
      dependsOn: map['dependsOn'] == null ? null : ((map['dependsOn'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      kind: (map['kind'] as String).input(),
      principalIds: (map['principalIds']).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      resourceScope: (map['resourceScope'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

