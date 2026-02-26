// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_policies_policy/get_policies_policy.dart';

/// Result data returned by getPolicies.
class GetPoliciesResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of Cloud Identity policies that match the filter (or all policies if no filter is provided). Structure is documented below.
  final List<GetPoliciesPolicy> policies;

  GetPoliciesResult({
    this.filter,
    required this.id,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['policies'] = Input.encodeList<GetPoliciesPolicy, Map<String, dynamic>>(
        policies, (value) => value.toMap());
    return map;
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      policies: Input.decodeList<GetPoliciesPolicy>(
          map['policies'],
          (value) => GetPoliciesPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
