// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_policy.dart';

/// Result data returned by getPolicies.
class GetPoliciesResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of Cloud Identity policies that match the filter (or all policies if no filter is provided). Structure is documented below.
  final List<GetPoliciesPolicy> policies;

  /// Creates a new [GetPoliciesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policies] List of Cloud Identity policies that match the filter (or all policies if no filter is provided). Structure is documented below.
  GetPoliciesResult({this.filter, required this.id, required this.policies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'policies':
          pulumi.Input.encodeList<GetPoliciesPolicy, Map<String, dynamic>>(
            policies,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      policies: pulumi.Input.decodeList<GetPoliciesPolicy>(
        map['policies'],
        (value) =>
            GetPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
