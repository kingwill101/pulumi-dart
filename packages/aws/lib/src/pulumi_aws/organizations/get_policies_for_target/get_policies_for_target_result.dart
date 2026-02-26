// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPoliciesForTarget.
class GetPoliciesForTargetResult {
  final String filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the policy ids found.
  final List<String> ids;
  final String targetId;

  GetPoliciesForTargetResult({
    required this.filter,
    required this.id,
    required this.ids,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['id'] = id;
    map['ids'] = ids;
    map['targetId'] = targetId;
    return map;
  }

  factory GetPoliciesForTargetResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesForTargetResult(
      filter: map['filter'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      targetId: map['targetId'] as String,
    );
  }
}
