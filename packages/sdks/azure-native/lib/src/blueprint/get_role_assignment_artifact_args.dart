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
    required this.artifactName,
    required this.blueprintName,
    required this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': artifactName,
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
    };
  }

  factory GetRoleAssignmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArtifactArgs(
      artifactName: (map['artifactName'] as String).input(),
      blueprintName: (map['blueprintName'] as String).input(),
      resourceScope: (map['resourceScope'] as String).input(),
    );
  }
}

