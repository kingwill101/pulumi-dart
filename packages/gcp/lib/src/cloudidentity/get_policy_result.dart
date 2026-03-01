// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_policy_query.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// The customer that the policy belongs to.
  final String customer;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name of the policy.
  final String name;

  /// A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  final List<GetPolicyPolicyQuery> policyQueries;

  /// The setting configured by this policy, represented as a JSON string.
  final String setting;

  /// The type of the policy.
  final String type;

  /// Creates a new [GetPolicyResult].
  /// [customer] The customer that the policy belongs to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the policy.
  /// [policyQueries] A list containing the CEL query that defines which entities the policy applies to. Structure is documented below.
  /// [setting] The setting configured by this policy, represented as a JSON string.
  /// [type] The type of the policy.
  GetPolicyResult({
    required this.customer,
    required this.id,
    required this.name,
    required this.policyQueries,
    required this.setting,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': customer,
      'id': id,
      'name': name,
      'policyQueries':
          pulumi.Input.encodeList<GetPolicyPolicyQuery, Map<String, dynamic>>(
            policyQueries,
            (value) => value.toMap(),
          ),
      'setting': setting,
      'type': type,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      customer: map['customer'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policyQueries: pulumi.Input.decodeList<GetPolicyPolicyQuery>(
        map['policyQueries'],
        (value) => GetPolicyPolicyQuery.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      setting: map['setting'] as String,
      type: map['type'] as String,
    );
  }
}
