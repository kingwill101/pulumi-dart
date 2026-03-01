// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_role_assignment_artifact_args_doc}
/// Arguments for getRoleAssignmentArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_role_assignment_artifact_args_doc}
class GetRoleAssignmentArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String> artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [GetRoleAssignmentArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  GetRoleAssignmentArtifactArgs({
    required pulumi.Output<String> artifactName,
    required pulumi.Output<String> blueprintName,
    required pulumi.Output<String> resourceScope,
  }) :
      artifactName = pulumi.Input.asInput<String>(artifactName),
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      resourceScope = pulumi.Input.asInput<String>(resourceScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': artifactName,
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
    };
  }

  factory GetRoleAssignmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArtifactArgs(
      artifactName: pulumi.Output.create<String>(map['artifactName'] as String),
      blueprintName: pulumi.Output.create<String>(map['blueprintName'] as String),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
    );
  }
}

