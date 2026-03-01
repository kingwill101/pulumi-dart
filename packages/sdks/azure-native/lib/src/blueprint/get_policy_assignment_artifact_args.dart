// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_policy_assignment_artifact_args_doc}
/// Arguments for getPolicyAssignmentArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_policy_assignment_artifact_args_doc}
class GetPolicyAssignmentArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String> artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [GetPolicyAssignmentArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  GetPolicyAssignmentArtifactArgs({
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

  factory GetPolicyAssignmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentArtifactArgs(
      artifactName: pulumi.Output.create<String>(map['artifactName'] as String),
      blueprintName: pulumi.Output.create<String>(map['blueprintName'] as String),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
    );
  }
}

