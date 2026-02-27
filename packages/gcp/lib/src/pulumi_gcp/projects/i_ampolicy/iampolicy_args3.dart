// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IAMPolicy.
class IAMPolicyArgs3 {
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the project. The policy will be
  /// merged with any existing policy applied to the project.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the project, locking out users without
  /// organization-level access.
  final Input<String> policyData;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final Input<String> project;

  IAMPolicyArgs3({
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyData'] = policyData;
    map['project'] = project;
    return map;
  }

  factory IAMPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return IAMPolicyArgs3(
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
