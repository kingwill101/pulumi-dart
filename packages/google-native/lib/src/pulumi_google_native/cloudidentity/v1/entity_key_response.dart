// ignore_for_file: unused_element, unnecessary_cast

/// A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s.
class EntityKeyResponse {
  /// The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source}`.
  final String namespace;

  EntityKeyResponse({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    return map;
  }

  factory EntityKeyResponse.fromMap(Map<String, dynamic> map) {
    return EntityKeyResponse(
      namespace: map['namespace'] as String,
    );
  }
}
