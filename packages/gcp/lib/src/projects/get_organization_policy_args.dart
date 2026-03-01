// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_organization_policy_get_organization_policy_args_doc}
/// Arguments for getOrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_projects_get_organization_policy_get_organization_policy_args_doc}
class GetOrganizationPolicyArgs {
  /// (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  final pulumi.Input<String> constraint;
  /// The project ID.
  final pulumi.Input<String> project;

  /// Creates a new [GetOrganizationPolicyArgs].
  /// [constraint] (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [project] The project ID.
  GetOrganizationPolicyArgs({
    required String constraint,
    required String project,
  }) :
      constraint = pulumi.Input.asInput<String>(constraint),
      project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraint': constraint,
      'project': project,
    };
  }

  factory GetOrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs(
      constraint: map['constraint'] as String,
      project: map['project'] as String,
    );
  }
}

