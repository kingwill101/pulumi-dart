// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPoliciesForTarget.
class GetPoliciesForTargetResult {
  final String filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of all the policy ids found.
  final List<String> ids;
  final String targetId;

  /// Creates a new [GetPoliciesForTargetResult].
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the policy ids found.
  /// [targetId] Required.
  GetPoliciesForTargetResult({
    required this.filter,
    required this.id,
    required this.ids,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'id': id,
      'ids': ids,
      'targetId': targetId,
    };
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

