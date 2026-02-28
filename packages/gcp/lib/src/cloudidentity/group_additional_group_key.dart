// ignore_for_file: unused_element, unnecessary_cast

class GroupAdditionalGroupKey {
  /// (Output)
  /// The ID of the entity.
  /// For Google-managed entities, the id must be the email address of an existing
  /// group or user.
  /// For external-identity-mapped entities, the id must be a string conforming
  /// to the Identity Source's requirements.
  /// Must be unique within a namespace.
  final String? id;

  /// (Output)
  /// The namespace in which the entity exists.
  /// If not specified, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If specified, the EntityKey represents an external-identity-mapped group.
  /// The namespace must correspond to an identity source created in Admin Console
  /// and must be in the form of `identitysources/{identity_source_id}`.
  final String? namespace;

  /// Creates a new [GroupAdditionalGroupKey].
  /// [id] (Output)
  /// [namespace] (Output)
  GroupAdditionalGroupKey({
    this.id,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    return map;
  }

  factory GroupAdditionalGroupKey.fromMap(Map<String, dynamic> map) {
    return GroupAdditionalGroupKey(
      id: map['id'] == null ? null : map['id'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}
