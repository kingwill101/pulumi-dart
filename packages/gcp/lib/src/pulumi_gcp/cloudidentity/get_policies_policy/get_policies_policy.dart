// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_policies_policy_policy_query/get_policies_policy_policy_query.dart';

class GetPoliciesPolicy {
  /// The customer that the policy belongs to.
  final String customer;

  /// The resource name of the policy.
  final String name;

  /// A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  final List<GetPoliciesPolicyPolicyQuery> policyQueries;

  /// The setting configured by this policy, represented as a JSON string.
  final String setting;

  /// The type of the policy.
  final String type;

  GetPoliciesPolicy({
    required this.customer,
    required this.name,
    required this.policyQueries,
    required this.setting,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customer'] = customer;
    map['name'] = name;
    map['policyQueries'] =
        Input.encodeList<GetPoliciesPolicyPolicyQuery, Map<String, dynamic>>(
            policyQueries, (value) => value.toMap());
    map['setting'] = setting;
    map['type'] = type;
    return map;
  }

  factory GetPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicy(
      customer: map['customer'] as String,
      name: map['name'] as String,
      policyQueries: Input.decodeList<GetPoliciesPolicyPolicyQuery>(
          map['policyQueries'],
          (value) => GetPoliciesPolicyPolicyQuery.fromMap(
              (value as Map).cast<String, dynamic>())),
      setting: map['setting'] as String,
      type: map['type'] as String,
    );
  }
}
