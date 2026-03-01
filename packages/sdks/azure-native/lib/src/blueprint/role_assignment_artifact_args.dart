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
    pulumi.Output<String>? artifactName,
    required pulumi.Output<String> blueprintName,
    pulumi.Output<List<String>>? dependsOn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> kind,
    required pulumi.Output<dynamic> principalIds,
    pulumi.Output<String>? resourceGroup,
    required pulumi.Output<String> resourceScope,
    required pulumi.Output<String> roleDefinitionId,
  }) :
      artifactName = pulumi.Input.asOptionalInput<String>(artifactName),
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      dependsOn = pulumi.Input.asOptionalInput<List<String>>(dependsOn),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kind = pulumi.Input.asInput<String>(kind),
      principalIds = pulumi.Input.asInput<dynamic>(principalIds),
      resourceGroup = pulumi.Input.asOptionalInput<String>(resourceGroup),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId);

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
      artifactName: map['artifactName'] == null ? null : pulumi.Output.create<String>(map['artifactName'] as String),
      blueprintName: pulumi.Output.create<String>(map['blueprintName'] as String),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Output.create<List<String>>((map['dependsOn'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      principalIds: pulumi.Output.create<dynamic>(map['principalIds']),
      resourceGroup: map['resourceGroup'] == null ? null : pulumi.Output.create<String>(map['resourceGroup'] as String),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
    );
  }
}

