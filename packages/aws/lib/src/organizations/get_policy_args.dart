// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_policy_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_policy_get_policy_args_doc}
class GetPolicyArgs {
  /// The unique identifier (ID) of the policy that you want more details on. Policy id starts with a "p-" followed by 8-28 lowercase or uppercase letters, digits, and underscores.
  final pulumi.Input<String> policyId;

  /// Creates a new [GetPolicyArgs].
  /// [policyId] The unique identifier (ID) of the policy that you want more details on. Policy id starts with a "p-" followed by 8-28 lowercase or uppercase letters, digits, and underscores.
  GetPolicyArgs({required String policyId})
    : policyId = pulumi.Input.asInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policyId': policyId};
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(policyId: map['policyId'] as String);
  }
}
