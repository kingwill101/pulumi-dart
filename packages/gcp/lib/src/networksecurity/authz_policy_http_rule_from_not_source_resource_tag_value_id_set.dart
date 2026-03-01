// ignore_for_file: unused_element, unnecessary_cast


class AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet {
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  /// Limited to 5 matches.
  final List<String>? ids;

  /// Creates a new [AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet].
  /// [ids] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet({
    this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
    };
  }

  factory AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
    );
  }
}

