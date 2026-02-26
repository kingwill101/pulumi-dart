// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet {
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  /// Limited to 5 matches.
  final List<String>? ids;

  AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet({
    this.ids,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idsValue = ids;
    if (idsValue != null) {
      map['ids'] = idsValue;
    }
    return map;
  }

  factory AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourceResourceTagValueIdSet(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
    );
  }
}
