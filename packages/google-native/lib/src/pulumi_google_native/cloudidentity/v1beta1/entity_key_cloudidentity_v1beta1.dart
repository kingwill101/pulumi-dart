// ignore_for_file: unused_element, unnecessary_cast

/// A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s.
class EntityKeyCloudidentityV1beta1 {
  /// The ID of the entity. For Google-managed entities, the `id` must be the email address of an existing group or user. For external-identity-mapped entities, the `id` must be a string conforming to the Identity Source's requirements. Must be unique within a `namespace`.
  final String? id;

  /// The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source_id}`.
  final String? namespace;

  EntityKeyCloudidentityV1beta1({
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

  factory EntityKeyCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return EntityKeyCloudidentityV1beta1(
      id: map['id'] == null ? null : map['id'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}
