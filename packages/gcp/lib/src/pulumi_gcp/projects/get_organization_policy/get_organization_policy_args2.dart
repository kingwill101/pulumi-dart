// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationPolicy.
class GetOrganizationPolicyArgs2 {
  /// (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  final Input<String> constraint;

  /// The project ID.
  final Input<String> project;

  GetOrganizationPolicyArgs2({
    required this.constraint,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['constraint'] = constraint;
    map['project'] = project;
    return map;
  }

  factory GetOrganizationPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs2(
      constraint: Input.asInput<String>(map['constraint']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
