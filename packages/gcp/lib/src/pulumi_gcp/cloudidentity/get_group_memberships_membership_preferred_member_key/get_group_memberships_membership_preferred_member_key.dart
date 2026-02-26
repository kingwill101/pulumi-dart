// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMembershipsMembershipPreferredMemberKey {
  /// The ID of the entity. For Google-managed entities, the id is the email address of an existing
  /// group or user. For external-identity-mapped entities, the id is a string conforming
  /// to the Identity Source's requirements.
  final String id;

  /// The namespace in which the entity exists.
  /// If not populated, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If populated, the EntityKey represents an external-identity-mapped group.
  final String namespace;

  GetGroupMembershipsMembershipPreferredMemberKey({
    required this.id,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['namespace'] = namespace;
    return map;
  }

  factory GetGroupMembershipsMembershipPreferredMemberKey.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMembershipsMembershipPreferredMemberKey(
      id: map['id'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
