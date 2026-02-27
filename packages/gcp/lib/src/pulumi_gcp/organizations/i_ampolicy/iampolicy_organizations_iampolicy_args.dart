// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IAMPolicy.
class IAMPolicyOrganizationsIAmpolicyArgs {
  /// The organization id of the target organization.
  final pulumi.Input<String> orgId;

  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the organization. The policy will be
  /// merged with any existing policy applied to the organization.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the organization, locking out users without
  /// organization-level access.
  final pulumi.Input<String> policyData;

  IAMPolicyOrganizationsIAmpolicyArgs({
    required this.orgId,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['orgId'] = orgId;
    map['policyData'] = policyData;
    return map;
  }

  factory IAMPolicyOrganizationsIAmpolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return IAMPolicyOrganizationsIAmpolicyArgs(
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
    );
  }
}
