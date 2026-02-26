// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationPolicy.
class GetOrganizationPolicyArgs {
  /// (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  final Input<String> constraint;

  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  final Input<String> folder;

  GetOrganizationPolicyArgs({
    required this.constraint,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['constraint'] = constraint;
    map['folder'] = folder;
    return map;
  }

  factory GetOrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs(
      constraint: Input.asInput<String>(map['constraint']),
      folder: Input.asInput<String>(map['folder']),
    );
  }
}
