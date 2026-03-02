// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes reference
class KubernetesReference {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final pulumi.Input<String>? apiGroup;
  /// Kind is the type of resource being referenced
  final pulumi.Input<String> kind;
  /// Name is the name of resource being referenced
  final pulumi.Input<String> name;
  /// Namespace is the namespace of the resource being referenced. This field is required when the resource has a namespace.
  final pulumi.Input<String>? namespace;

  /// Creates a new [KubernetesReference].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  /// [namespace] Namespace is the namespace of the resource being referenced. This field is required when the resource has a namespace.
  KubernetesReference({
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

  factory KubernetesReference.fromMap(Map<String, dynamic> map) {
    return KubernetesReference(
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup']! as String).input(),
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}

