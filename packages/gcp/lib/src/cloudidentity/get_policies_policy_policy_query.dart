// ignore_for_file: unused_element, unnecessary_cast

class GetPoliciesPolicyPolicyQuery {
  /// The group that the policy applies to.
  final String group;

  /// The org unit that the policy applies to.
  final String orgUnit;

  /// The query that defines which entities the policy applies to.
  final String query;

  /// The sort order of the policy.
  final double sortOrder;

  /// Creates a new [GetPoliciesPolicyPolicyQuery].
  /// [group] The group that the policy applies to.
  /// [orgUnit] The org unit that the policy applies to.
  /// [query] The query that defines which entities the policy applies to.
  /// [sortOrder] The sort order of the policy.
  GetPoliciesPolicyPolicyQuery({
    required this.group,
    required this.orgUnit,
    required this.query,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    map['orgUnit'] = orgUnit;
    map['query'] = query;
    map['sortOrder'] = sortOrder;
    return map;
  }

  factory GetPoliciesPolicyPolicyQuery.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicyPolicyQuery(
      group: map['group'] as String,
      orgUnit: map['orgUnit'] as String,
      query: map['query'] as String,
      sortOrder: map['sortOrder'] as double,
    );
  }
}
