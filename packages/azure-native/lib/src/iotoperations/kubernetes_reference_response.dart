// ignore_for_file: unused_element, unnecessary_cast


/// Kubernetes reference
class KubernetesReferenceResponse {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;
  /// Kind is the type of resource being referenced
  final String kind;
  /// Name is the name of resource being referenced
  final String name;
  /// Namespace is the namespace of the resource being referenced. This field is required when the resource has a namespace.
  final String? namespace;

  /// Creates a new [KubernetesReferenceResponse].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  /// [namespace] Namespace is the namespace of the resource being referenced. This field is required when the resource has a namespace.
  KubernetesReferenceResponse({
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

  factory KubernetesReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesReferenceResponse(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

