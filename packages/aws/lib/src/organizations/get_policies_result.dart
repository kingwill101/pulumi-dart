// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicies.
class GetPoliciesResult {
  final String filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the policy ids found.
  final List<String> ids;

  /// Creates a new [GetPoliciesResult].
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the policy ids found.
  GetPoliciesResult({
    required this.filter,
    required this.id,
    required this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter, 'id': id, 'ids': ids};
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      filter: map['filter'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
    );
  }
}
