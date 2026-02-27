// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationPolicy.
class GetOrganizationPolicyProjectsArgs {
  /// (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  final pulumi.Input<String> constraint;

  /// The project ID.
  final pulumi.Input<String> project;

  GetOrganizationPolicyProjectsArgs({
    required this.constraint,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['constraint'] = constraint;
    map['project'] = project;
    return map;
  }

  factory GetOrganizationPolicyProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyProjectsArgs(
      constraint: pulumi.Input.asInput<String>(map['constraint']),
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
