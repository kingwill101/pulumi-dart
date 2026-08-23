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
  const RoleAssignmentArtifactArgs({
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
      artifactName: (() { final guardedValue = map['artifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintName: pulumi.Input.fromValue(map['blueprintName'] as String),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      principalIds: pulumi.Input.fromValue(map['principalIds']),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceScope: pulumi.Input.fromValue(map['resourceScope'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}
