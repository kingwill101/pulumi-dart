// ignore_for_file: unused_element, unnecessary_cast


/// ResourceClassParametersReference contains enough information to let you locate the parameters for a ResourceClass.
class ResourceClassParametersReference {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;
  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  final String kind;
  /// Name is the name of resource being referenced.
  final String name;
  /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  final String? namespace;

  /// Creates a new [ResourceClassParametersReference].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [kind] Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  /// [name] Name is the name of resource being referenced.
  /// [namespace] Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  ResourceClassParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': kind,
      'name': name,
      'namespace': ?namespace,
    };
  }

  factory ResourceClassParametersReference.fromMap(Map<String, dynamic> map) {
    return ResourceClassParametersReference(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

