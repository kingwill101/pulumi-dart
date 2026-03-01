// ignore_for_file: unused_element, unnecessary_cast


/// ResourceClaimParametersReference contains enough information to let you locate the parameters for a ResourceClaim. The object must be in the same namespace as the ResourceClaim.
class ResourceClaimParametersReferencePatch {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;
  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  final String? kind;
  /// Name is the name of resource being referenced.
  final String? name;

  /// Creates a new [ResourceClaimParametersReferencePatch].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [kind] Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  /// [name] Name is the name of resource being referenced.
  ResourceClaimParametersReferencePatch({
    this.apiGroup,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory ResourceClaimParametersReferencePatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimParametersReferencePatch(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

